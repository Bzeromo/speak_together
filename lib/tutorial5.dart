import 'tutorial6.dart';
import 'dart:ui';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'tutorial4.dart';
import 'package:flutter/services.dart';

class Tutorial5 extends StatelessWidget {
  const Tutorial5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final player = AudioPlayer();
    player.play(AssetSource('sounds/tutorial4.wav'));
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
                    image: AssetImage('assets/images/튜토4.png'),
                  ),
                ),
                child: Row(
              children: [
              Opacity(
              opacity:0.0,
                child: Container(
                  width: 180,
                  height: 250,
                  margin: EdgeInsets.only(top: 150, left: 460,),
                  child: RaisedButton(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Opacity(
                          opacity: 0.0,
                          child: Image.asset('assets/images/나비.png'),
                        ),
                      ],
                    ),
                    onPressed: () {
                      player.stop();
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Tutorial6()));},
                  ),
                ),
              ),
            ],
          ),
                ),
              )
          ),
        );
  }
}