
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:speak_together/tutorial3.dart';
import 'package:flutter/services.dart';


class Tutorial2 extends StatelessWidget {
  const Tutorial2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final player = AudioPlayer();
    player.play(AssetSource('sounds/tutorial2.wav'));
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
                    image: AssetImage('assets/images/튜토2.png'),
                  ),
                ),
                child: Row(
                  children: [
                    Opacity(
                      opacity:0.0,
                    child: Container(
                      width: 120,
                      height: 80,
                      margin: EdgeInsets.only(top: 30, bottom: 260, left: 250,),
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
                            MaterialPageRoute(builder: (context) => Tutorial3()));},
                      ),
                    ),
                    ),
                  ],
                ),
              )
          ),
        )
    );
  }
}