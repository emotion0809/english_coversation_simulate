import 'dart:math';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:english_coversation_simulate_re/models/message_model.dart';
import 'package:english_coversation_simulate_re/services/api_manager.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:intl/intl.dart';
import 'package:speech_to_text/speech_to_text.dart';
import '../models/api_route_model.dart';

class ChatScreen extends StatefulWidget {
  final int index;

  ChatScreen({required this.index});

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final inputController = TextEditingController();
  DateTime now = DateTime.now();
  String coversationID = "";
  String outText = '';
  String formattedDate = "";

  //文字轉語音和語音轉文字
  bool useDirectChat = false;
  bool _hasSpeech = false;
  double level = 0.0;
  double minSoundLevel = 50000;
  double maxSoundLevel = -50000;
  String _currentLocaleId = 'en';
  int resultListened = 0;
  final SpeechToText speech = SpeechToText();
  final FlutterTts flutterTts = FlutterTts();
  String _text = '請按下按鈕後說點英文吧';
  bool startAnime = false;

  void initState() {
    super.initState();
    initSpeechState();
    //取得CoversationID
    now = DateTime.now();
    coversationID = DateFormat('yyyyMMddHHmmssSSS').format(now);
    //觸發情境
    messages.clear();
    connectAPI("start_situation");
  }

  speak(String text) async {
    await flutterTts.setLanguage("en");
    await flutterTts.setPitch(1);
    await flutterTts.speak(text);
  }

  Future<void> initSpeechState() async {
    var hasSpeech = await speech.initialize(
        onStatus: statusListener, onError: errorListener, debugLogging: false);

    if (!mounted) return;

    setState(() {
      _hasSpeech = hasSpeech;
    });
  }

  void errorListener(SpeechRecognitionError) {
    stopListening();
    print('onError: ' + SpeechRecognitionError.toString());
  }

  void statusListener(String status) {
    print('onStatus: ' + status.toString());
  }

  void stopListening() {
    startAnime = false;
    setState(() {});
    speech.stop();
    _text = '已取消說話';
    setState(() {
      level = 0.0;
    });
  }

  void soundLevelListener(double level) {
    minSoundLevel = min(minSoundLevel, level);
    maxSoundLevel = max(maxSoundLevel, level);
    // print("sound level $level: $minSoundLevel - $maxSoundLevel ");
    setState(() {
      this.level = level;
    });
  }

  void startListening() {
    startAnime = true;
    setState(() {});
    _text = '正在聆聽......';
    speech.listen(
        onResult: (val) => setState(() async {
              DateTime now = DateTime.now();
              String formattedDate = DateFormat('h:mm a').format(now);
              _text = val.recognizedWords;
              setState(() {
                outText = _text;
              });
            }),
        //listenFor: Duration(seconds: 5),
        //pauseFor: Duration(seconds: 5),
        partialResults: false,
        localeId: _currentLocaleId,
        onSoundLevelChange: soundLevelListener,
        cancelOnError: true,
        listenMode: ListenMode.confirmation);
    setState(() {});
  }

  _buildMessage(Message message, bool isUser) {
    final Container msg = Container(
      margin: isUser
          ? EdgeInsets.only(
              top: 8.0,
              bottom: 8.0,
              left: 80.0,
            )
          : EdgeInsets.only(
              top: 8.0,
              bottom: 8.0,
            ),
      padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
      width: MediaQuery.of(context).size.width * 0.75,
      decoration: BoxDecoration(
        color: isUser ? Color(0xFFA6A6D2) : Color(0xFFFFAD86),
        borderRadius: isUser
            ? BorderRadius.only(
                topLeft: Radius.circular(15.0),
                bottomLeft: Radius.circular(15.0),
                topRight: Radius.circular(15.0),
                bottomRight: Radius.circular(15.0),
              )
            : BorderRadius.only(
                topRight: Radius.circular(15.0),
                bottomRight: Radius.circular(15.0),
                topLeft: Radius.circular(15.0),
                bottomLeft: Radius.circular(15.0),
              ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            message.time,
            style: TextStyle(
              color: const Color(0xFF484891),
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 8.0),
          Text(
            message.text,
            style: TextStyle(
              color: const Color(0xFF484891),
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
    if (isUser) {
      return msg;
    }
    return Row(
      children: <Widget>[
        msg,
      ],
    );
  }

  _buildMessageComposer() {
    return Container(
      height: 180.0,
      color: Colors.white,
      child: Container(
        child: Column(
          children: [
            Divider(
              thickness: 1,
              color: Color(0xff5E005E),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {},
                      child: AutoSizeText(
                        outText,
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.send),
                    iconSize: 25.0,
                    color: const Color(0xff8d028d),
                    onPressed: () {
                      sendMessage();
                    },
                  ),
                ],
              ),
            ),
            AvatarGlow(
                glowColor: Colors.red,
                animate: startAnime,
                child: CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.red,
                  child: CircleAvatar(
                      radius: 27,
                      backgroundColor: Colors.white,
                      child: IconButton(
                        padding: EdgeInsets.zero,
                        icon: Icon(Icons.mic, color: Colors.red),
                        iconSize: 30,
                        onPressed: !_hasSpeech || speech.isListening
                            ? stopListening
                            : startListening,
                      )),
                ),
                endRadius: 60)
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff8d028d),
        title: Text(
          Situations[widget.index].name,
          style: TextStyle(
            fontSize: 28.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.lightbulb_outline),
            iconSize: 30.0,
            color: Colors.white,
            onPressed: () {},
          ),
        ],
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 5.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0),
                  ),
                  child: ListView.builder(
                    padding: EdgeInsets.only(top: 15.0),
                    itemCount: messages.length,
                    itemBuilder: (BuildContext context, int index) {
                      final Message message = messages[index];
                      return _buildMessage(message, message.isUser);
                    },
                  ),
                ),
              ),
            ),
            _buildMessageComposer(),
          ],
        ),
      ),
    );
  }

  sendMessage() async {
    //發送訊息
    String input = outText;
    now = DateTime.now();
    formattedDate = DateFormat('h:mm a').format(now);
    if (input != '') {
      messages.add(Message(time: formattedDate, text: input, isUser: true));
    }
    setState(() {
      outText = "";
    });
    connectAPI(input);
  }

  connectAPI(String input) async {
    await API_Manager.reply(Situations[widget.index].port, coversationID,
        Situations[widget.index].auth, input);
    now = DateTime.now();
    formattedDate = DateFormat('h:mm a').format(now);
    if (API_Manager.bot_reply != ["", "", "", "", ""]) {
      for (var i = 0; i < API_Manager.bot_reply.length; i++) {
        if (API_Manager.bot_reply[i] != "") {
          if (API_Manager.bot_reply[i].startsWith(":")) {
            API_Manager.bot_reply[i] = API_Manager.bot_reply[i].substring(2);
            messages.add(Message(
              time: formattedDate,
              text: API_Manager.bot_reply[i],
              isUser: false,
            ));
            //API_Manager.isImage[i] = null;
          } else {
            //文字
            messages.add(Message(
                time: formattedDate,
                text: API_Manager.bot_reply[i],
                isUser: false));
            await flutterTts.speak(API_Manager.bot_reply[i]);
          }
          API_Manager.bot_reply[i] = "";
        }
      }
    }
    setState(() {});
  }
}
