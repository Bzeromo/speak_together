
import 'dart:ui';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:speak_together/app_main_theme.dart';
import 'tutorial4.dart';
import 'package:flutter/services.dart';

class Tutorial8 extends StatelessWidget {
  const Tutorial8({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final player = AudioPlayer();
    player.play(AssetSource('sounds/tutorial6.wav'));
    SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight]);

    return MaterialApp(
        home: Scaffold(
          body: SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/튜토6.png'),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 100,
                      width: 150,
                      child: ElevatedButton(
                          child: Text('동화 속으로!'), onPressed: () {
                        player.stop();
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => AppMainTheme()));
                      },
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50.0),
                                    side: BorderSide(color:Colors.black),
                                  )),
                              foregroundColor: MaterialStateProperty.all(
                                  Color(0xff692d32)),
                              backgroundColor: MaterialStateProperty.all(
                                  Color(0xffecda9f)),
                              textStyle: MaterialStateProperty.resolveWith((
                                  states) {
                                if (states.contains(MaterialState.pressed)) {
                                  return TextStyle(fontSize: 25);
                                } else {
                                  return TextStyle(fontSize: 20);
                                }
                              }))),
                      margin: EdgeInsets.only(top: 240, bottom: 10),
                    ),
                  ],
                ),
              )
          ),
        )
    );
  }
}