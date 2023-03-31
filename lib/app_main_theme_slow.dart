import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/services.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:speak_together/heungbu_1.dart';
import 'app_main_theme.dart';
import 'app_main_theme_slow.dart';
import 'baby_pig_1.dart';
import 'exit_tip.dart';
import 'rabbit_turtle_1.dart';
import 'tutorial.dart';


class AppMainThemeSlow extends StatelessWidget {
  const AppMainThemeSlow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final player = AudioPlayer();
    SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight]);
    player.play(AssetSource('sounds/main_slow_theme.mp3'));

    return MaterialApp(
        home: Scaffold(
            body:SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: Container(
                decoration: BoxDecoration(
                    color: Color(0xffffffff)
                ),
                child: ListView(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    children:[
                      Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                  margin: EdgeInsets.only(top: 5, bottom: 50, right: 180, left: 10),
                                  height: 60,
                                  width: 60,
                                  child: IconButton(
                                    onPressed: () {
                                      showDialog(
                                          context: context,
                                          barrierDismissible: true, // 바깥 영역 터치시 닫을지 여부
                                          builder: (BuildContext context) {
                                            return AlertDialog(
                                              content: const ExitTips(),
                                              insetPadding: const  EdgeInsets.fromLTRB(0,80,0, 80),
                                              actions: [
                                                Container(
                                                  margin: EdgeInsets.only(bottom: 52),
                                                  child: Center(
                                                      child: Text("나갈래?", style: TextStyle(color: Color(0xff692d32), fontSize: 40, fontWeight: FontWeight.w700),)),
                                                ),
                                                Center(
                                                  child: Row(
                                                    children: [
                                                      TextButton(
                                                        child: Container(
                                                            margin: EdgeInsets.only(bottom: 10, right: 60, left: 140),
                                                            child: const Text('응!', style: TextStyle(color: Color(
                                                                0xff000000), fontSize: 30, fontWeight: FontWeight.w700),)),
                                                        onPressed: () {
                                                          SystemNavigator.pop();
                                                        },
                                                      ),
                                                      TextButton(
                                                        child: Container(
                                                            margin: EdgeInsets.only(bottom: 10),
                                                            child: const Text('아니!', style: TextStyle(color: Color(
                                                                0xff000000), fontSize: 30, fontWeight: FontWeight.w700),)),
                                                        onPressed: () {
                                                          Navigator.of(context).pop();
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
                                    icon: Icon(Icons.exit_to_app), iconSize: 50,
                                  )
                              ),
                            ],
                          ),
                          Container(
                              margin: EdgeInsets.only(top: 63, bottom:5),
                              child: const Text('빠르게 읽고 싶으면\n        나를 눌러!', style: TextStyle(color: Color(
                                  0x83000000), fontSize: 15, fontWeight: FontWeight.w700),)),
                          Container(
                            child: IconButton(onPressed: (){
                              player.stop();
                              Navigator.push(
                                  context, MaterialPageRoute(builder: (context) => AppMainTheme()));},
                              icon: Image.asset('assets/images/2_뛰다 1.png'),
                              iconSize: 120,
                            ),
                            margin: EdgeInsets.only(top:5),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                              margin: EdgeInsets.only(top: 120, bottom:5),
                              child: const Text('거북이와 느리게!', style: TextStyle(color: Color(
                                  0xFF000000), fontSize: 30, fontWeight: FontWeight.w700),)
                          ),
                          Container(
                            height: 180,
                            width: 200,
                            child: Image.asset('assets/images/기쁘다_거북이.png'),
                            margin: EdgeInsets.only(top:20),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: 40,
                            width: 125,
                            child: ElevatedButton(child: Text("첫 번째 이야기", style: TextStyle(color: Color(0xff692d32), fontSize: 15, fontWeight: FontWeight.w700),), onPressed: (){},
                                style: ButtonStyle(
                                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(5.0),
                                        )),
                                    foregroundColor: MaterialStateProperty.all(
                                        Color(0xff692d32)),
                                    backgroundColor: MaterialStateProperty.all(
                                        Color(0xfffcefdb)),
                                    textStyle: MaterialStateProperty.resolveWith((states) {
                                      if (states.contains(MaterialState.pressed)) {
                                        return TextStyle(fontSize: 20);
                                      } else {
                                        return TextStyle(fontSize: 16);
                                      }
                                    }))),
                            margin: EdgeInsets.only(top: 10, bottom: 10, right: 100),
                          ),
                          Container(
                              margin: EdgeInsets.only(top:5, left: 10),
                              child: Text("토끼와 거북이", style: TextStyle(color: Color(0xff692d32), fontSize: 30, fontWeight: FontWeight.w700),)
                          ),
                          Container(
                            child: IconButton(onPressed: (){
                              player.stop();
                              Navigator.push(
                                  context, MaterialPageRoute(builder: (context) => TurtleRabbitTurtle1()));},
                              icon: Image.asset('assets/images/토거1.png'),
                              iconSize: 234,
                            ),
                            margin: EdgeInsets.only(left:10),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: 40,
                            width: 125,
                            child: ElevatedButton(child: Text("두 번째 이야기", style: TextStyle(color: Color(0xff692d32), fontSize: 15, fontWeight: FontWeight.w700),), onPressed: (){},
                                style: ButtonStyle(
                                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(5.0),
                                        )),
                                    foregroundColor: MaterialStateProperty.all(
                                        Color(0xff692d32)),
                                    backgroundColor: MaterialStateProperty.all(
                                        Color(0xfffcefdb)),
                                    textStyle: MaterialStateProperty.resolveWith((states) {
                                      if (states.contains(MaterialState.pressed)) {
                                        return TextStyle(fontSize: 20);
                                      } else {
                                        return TextStyle(fontSize: 16);
                                      }
                                    }))),
                            margin: EdgeInsets.only(top: 10, bottom: 10, left: 10),
                          ),
                          Container(
                              margin: EdgeInsets.only(top:5, left: 100),
                              child: Text("아기 돼지 삼형제", style: TextStyle(color: Color(0xff692d32), fontSize: 30, fontWeight: FontWeight.w700),)
                          ),
                          Container(
                            child: IconButton(onPressed: (){
                              player.stop();
                              Navigator.push(
                                  context, MaterialPageRoute(builder: (context) => TurtleBabyPig1()));},
                              icon: Image.asset('assets/images/돼지3.png'),
                              iconSize: 234,
                            ),
                            margin: EdgeInsets.only(left:100),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: 40,
                            width: 125,
                            child: ElevatedButton(child: Text("세 번째 이야기", style: TextStyle(color: Color(0xff692d32), fontSize: 15, fontWeight: FontWeight.w700),), onPressed: (){},
                                style: ButtonStyle(
                                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(5.0),
                                        )),
                                    foregroundColor: MaterialStateProperty.all(
                                        Color(0xff692d32)),
                                    backgroundColor: MaterialStateProperty.all(
                                        Color(0xfffcefdb)),
                                    textStyle: MaterialStateProperty.resolveWith((states) {
                                      if (states.contains(MaterialState.pressed)) {
                                        return TextStyle(fontSize: 20);
                                      } else {
                                        return TextStyle(fontSize: 16);
                                      }
                                    }))),
                            margin: EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 50),
                          ),
                          Container(
                              margin: EdgeInsets.only(top:5, left: 100, right: 50),
                              child: Text("흥부와 놀부", style: TextStyle(color: Color(0xff692d32), fontSize: 30, fontWeight: FontWeight.w700),)
                          ),
                          Container(
                            child: IconButton(onPressed: (){
                              player.stop();
                              Navigator.push(
                                  context, MaterialPageRoute(builder: (context) => TurtleHeungbu1()));},
                              icon: Image.asset('assets/images/흥부2.png'),
                              iconSize: 234,
                            ),
                            margin: EdgeInsets.only(left:100, right: 50),
                          ),
                        ],
                      )
                    ]
                ),
              ),
            )
        )
    );
  }
}
