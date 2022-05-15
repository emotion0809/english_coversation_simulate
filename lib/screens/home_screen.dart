import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import 'package:flutter/material.dart';

import '../widgets/recent_chats.dart';
import 'chat_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    int selectedIndex = 0;
    final List<String> Categories = ['Messages'];
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
                      Expanded(
                        child: Container(
                          height: 150,
                          child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              side: BorderSide(
                                  color: Color(0xff5E005E), width: 5),
                              primary: Colors.white,
                              backgroundColor: const Color(0xff8d028d),
                              shadowColor: Colors.black,
                              elevation: 20,
                              shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ChatScreen(),
                                      maintainState: false));
                            },
                            child: AutoSizeText('按鈕'),
                          ),
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(10)),
                      Expanded(
                        child: Container(
                          height: 150,
                          child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              side: BorderSide(
                                  color: Color(0xff5E005E), width: 5),
                              primary: Colors.white,
                              backgroundColor: const Color(0xff8d028d),
                              shadowColor: Colors.black,
                              elevation: 20,
                              shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ChatScreen(),
                                      maintainState: false));
                            },
                            child: AutoSizeText('按鈕'),
                          ),
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(10)),
                    ],
                  ),
                  Padding(padding: EdgeInsets.all(10)),
                ],
              ));
            }));
  }
}
