import 'package:auto_size_text/auto_size_text.dart';
import 'package:english_coversation_simulate_re/models/api_route_model.dart';
import 'package:flutter/material.dart';
import '../models/auth_manager.dart';
import '../services/api_manager.dart';
import 'chat_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void initState() {
    super.initState();
    //取得授權
    for (int i = 0; i < 10; i++) {
      Future<Auth> _auth = API_Manager().getAuth(Situations[i].port);
      _auth.then((value) {
        Situations[i].auth = value.accessToken;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    int selectedIndex = 0;
    return Scaffold(
        appBar: AppBar(
            backgroundColor: const Color(0xff8d028d),
            title: const Align(
                alignment: Alignment.center,
                child: AutoSizeText(
                  '英語情境學習',
                  maxLines: 1,
                ))),
        body: ListView.builder(
            itemCount: 5,
            itemBuilder: (BuildContext context, int index) {
              return (Column(
                children: [
                  Padding(padding: EdgeInsets.all(10)),
                  Row(
                    children: [
                      Padding(padding: EdgeInsets.all(10)),
                      Expanded(child: _situationButton(index * 2)),
                      Padding(padding: EdgeInsets.all(10)),
                      Expanded(child: _situationButton(index * 2 + 1)),
                      Padding(padding: EdgeInsets.all(10)),
                    ],
                  ),
                  Padding(padding: EdgeInsets.all(10)),
                ],
              ));
            }));
  }

  _situationButton(int index) {
    return Container(
        height: 150,
        child: InkWell(
          onTap: () {
            connectSituation(index);
          }, // Handle your callback.
          splashColor: Colors.brown.withOpacity(0.5),
          child: Ink(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(Situations[index].imageUrl),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.all(Radius.circular(20)),
              border: Border.all(
                color: Color(0xff5E005E),
                width: 5,
              ),
              boxShadow: [
                BoxShadow(
                  color: Color(0xff9D9D9D),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Container(
              height: 10,
              alignment: Alignment.bottomRight,
              padding: EdgeInsets.fromLTRB(0, 0, 5, 5),
              child: Stack(children: [
                AutoSizeText(
                  Situations[index].name,
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      foreground: Paint()
                        ..style = PaintingStyle.stroke
                        ..strokeWidth = 6
                        ..color = Colors.black),
                ),
                AutoSizeText(
                  Situations[index].name,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
              ]),
            ),
          ),
        ));
  }

  connectSituation(int index) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => ChatScreen(
                  index: index,
                ),
            maintainState: false));
  }
}
