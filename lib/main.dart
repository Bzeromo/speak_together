import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/services.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:speak_together/app_main_theme.dart';
import 'package:speak_together/baby_pig_1.dart';
import 'baby_pig_2.dart';
import 'baby_pig_3.dart';
import 'baby_pig_4.dart';
import 'exit_tip.dart';
import 'heungbu_1.dart';
import 'heungbu_2.dart';
import 'heungbu_3.dart';
import 'heungbu_4.dart';
import 'tutorial.dart';

void main()=>runApp(MaterialApp(home:MyApp()));

class MyApp extends StatelessWidget { // 메인 페이지(MyApp)
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final player = AudioPlayer();
    SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight]);
    player.play(AssetSource('sounds/start_theme.mp3'));
    return MaterialApp(
      home: SizedBox(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/시작.png'),
            ),
          ),
          child: Row(
            children: [
              Container(
                height: 100,
                width: 120,
                child: ElevatedButton(child: Text('시작하기'), onPressed: (){
                  showDialog(
                      context: context,
                      barrierDismissible: true, // 바깥 영역 터치시 닫을지 여부
                      builder: (BuildContext context) {
                        return AlertDialog(
                          content: const ExitTips2(),
                          insetPadding: const  EdgeInsets.fromLTRB(0,80,0, 80),
                          actions: [
                            Container(
                              margin: EdgeInsets.only(bottom: 50),
                              child: Center(
                                  child: Text("처음이니?", style: TextStyle(color: Color(0xff692d32), fontSize: 40, fontWeight: FontWeight.w700),)),
                            ),
                            Center(
                              child: Row(
                                children: [
                                  TextButton(
                                    child: Container(
                                        margin: EdgeInsets.only(bottom: 10, right: 90, left: 170),
                                        child: const Text('응!', style: TextStyle(color: Color(
                                            0xff000000), fontSize: 30, fontWeight: FontWeight.w700),)),
                                    onPressed: () {
                                      player.stop();
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) => Tutorial1()));
                                    },
                                  ),
                                  TextButton(
                                    child: Container(
                                        margin: EdgeInsets.only(bottom: 10),
                                        child: const Text('아니!', style: TextStyle(color: Color(
                                            0xff000000), fontSize: 30, fontWeight: FontWeight.w700),)),
                                    onPressed: () {
                                      player.stop();
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) => AppMainTheme()));
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ],
                        );
                      }
                  );
                },
                    style: ButtonStyle(
                     shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                         RoundedRectangleBorder(
                           side: BorderSide(color:Colors.black),
                           borderRadius: BorderRadius.circular(50.0),
                         )),
                    foregroundColor: MaterialStateProperty.all(
                        Color(0xff692d32)),
                    backgroundColor: MaterialStateProperty.all(
                        Color(0xffecda9f)),
                    textStyle: MaterialStateProperty.resolveWith((states) {
                  if (states.contains(MaterialState.pressed)) {
                    return TextStyle(fontSize: 22);
                  } else {
                    return TextStyle(fontSize: 20);
                  }
                }))),
                margin: EdgeInsets.only(top:320, bottom: 20, right: 20, left: 410),
              )
            ],
          ),
      )
      )
    );
  }
}


 /*
 Scaffold( // 상단 중단 하단 구분 레이아웃
        appBar: AppBar(
          title: Text("앱임", style: TextStyle(color: Color(0xffaaaaaa), fontSize: 50, fontWeight: FontWeight.w700))
        ), // 상단
        body: Align(
          alignment: Alignment.bottomRight,
          child: Container(
            width: double.infinity, height: 50,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black)
            ),
            // margin: EdgeInsets.fromLTRB(0,30,0,0),
            // padding: EdgeInsets.all(20),
            child: ElevatedButton(child: Text('글자'), onPressed: (){}, style: ButtonStyle())
          ),
        ), // 중단
        bottomNavigationBar: BottomAppBar(
          child: SizedBox(
            height: 70,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.phone),
                Icon(Icons.message),
                Icon(Icons.contact_page)
              ]

            ),
          )
        ), // 하단
      )

          // Column과 children: [] 세로 배치
          // Row와 children:[] 가로 배치
          // Container와 child
          // Image.asset('assets/butterfly.jpeg')
          // Icon(Icons.star)
          // Text('hello')
  */