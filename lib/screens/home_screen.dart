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
    for(int i = 0;i < 10;i++){
      //取得授權
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
                                      builder: (context) => ChatScreen(satitle: Situations[index*2].name,port: Situations[index*2].port,index: index*2),
                                      maintainState: false));
                            },
                            child: AutoSizeText(Situations[index*2].name,style: TextStyle(fontSize: 30)),
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
                                      builder: (context) => ChatScreen(satitle: Situations[index*2+1].name,port: Situations[index*2+1].port,index: index*2+1),
                                      maintainState: false));
                            },
                            child: AutoSizeText(Situations[index*2+1].name,style: TextStyle(fontSize: 30),),
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
