import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/services.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:korea_regexp/korea_regexp.dart';


class SpeechPic extends StatefulWidget {
  
  late String word;
  late String voice;
  
  SpeechPic(this.word, this.voice, {Key? key}) : super(key: key);
  
  @override
  _speechPicState createState() => _speechPicState(word, voice);
}

class _speechPicState extends State<SpeechPic> {
  final List<String>charArr = <String>[
    'assets/images/ㄱ.png',
    'assets/images/ㄴ.png',
    'assets/images/ㄷ.png',
    'assets/images/ㄹ.png',
    'assets/images/ㅁ.png',
    'assets/images/ㅂ.png',
    'assets/images/ㅅ.png',
    'assets/images/ㅇ.png',
    'assets/images/ㅈ.png',
    'assets/images/ㅊ.png',
    'assets/images/ㅋ.png',
    'assets/images/ㅌ.png',
    'assets/images/ㅍ.png',
    'assets/images/ㅎ.png',
    'assets/images/ㅏ.png',
    'assets/images/ㅑ.png',
    'assets/images/ㅓ.png',
    'assets/images/ㅕ.png',
    'assets/images/ㅗ.png',
    'assets/images/ㅛ.png',
    'assets/images/ㅜ.png',
    'assets/images/ㅠ.png',
    'assets/images/ㅡ.png',
    'assets/images/ㅣ.png',
    'assets/images/ㅔ.png',
    'assets/images/ㅐ.png',
    'assets/images/ㅖ.png',
    'assets/images/ㅒ.png',
  ];
  late String word;
  late String voice;

  _speechPicState(this.word, this.voice);

  @override
  Widget build(BuildContext context) {
    final player = AudioPlayer();
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight]);
      player.play(AssetSource('videos/' + voice + '.mp4'));


    var jamoList = [];
    jamoList = explode(word);

    /*
    final runes = word.runes.toList();

    List<double> jamoList = [];
    for(int i =0; i < word.length; i++) {
      jamoList.add((runes[i] - 0xAc00)/28/21);
      jamoList.add(((runes[i] - 0xAc00)/28%21));
      jamoList.add((runes[i] - 0xAc00)%28);
    }

    List <String> jamoList3 = [];
    for(int i =0; i < jamoList.length; i++){
      jamoList3.add(String.fromCharCode(jamoList[i].toInt()));
    }
    */
    // var cho = ["ㄱ", "ㄲ", "ㄴ", "ㄷ", "ㄸ", "ㄹ", "ㅁ", "ㅂ", "ㅃ", "ㅅ", "ㅆ", "ㅇ", "ㅈ", "ㅉ", "ㅊ", "ㅋ", "ㅌ", "ㅍ", "ㅎ"];
    // var jong = ["ㅏ", "ㅐ", "ㅑ", "ㅒ", "ㅓ", "ㅔ", "ㅕ", "ㅖ", "ㅗ", "ㅘ", "ㅙ", "ㅚ","ㅛ","ㅜ","ㅝ","ㅞ","ㅟ","ㅠ","ㅡ","ㅢ","ㅣ"];
    // var joong = ["", "ㄱ", "ㄲ", "ㄱㅅ", "ㄴ", "ㄴㅈ", "ㄴㅎ", "ㄷ", "ㄹ", "ㄹㄱ", "ㄹㅁ", "ㄹㅂ", "ㄹㅅ", "ㄹㅌ", "ㄹㅎ", "ㅁ", "ㅂ", "ㅂㅅ", "ㅅ", "ㅆ", "ㅇ", "ㅈ", "ㅊ", "ㅋ", "ㅌ", "ㅍ", "ㅎ"];

    return MaterialApp(
        home: Scaffold(
            body: SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: Container(
                decoration: BoxDecoration(
                    color: Color(0xfffcefdb)
                ),
                child: ListView(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    children: [
                      Column(
                        children: [
                          Container(
                              margin: EdgeInsets.only(
                                  top: 5, bottom: 100, right: 80),
                              height: 60,
                              width: 60,
                              child: IconButton(
                                onPressed: () {
                                  player.stop();
                                  Navigator.pop(context);
                                },
                                icon: Icon(Icons.exit_to_app), iconSize: 50,
                              )
                          ),
                          Center(
                            child: Container(
                                margin: EdgeInsets.only(left: 50),
                                child: Text(
                                  '    누르고\n따라 읽어봐!', style: TextStyle(
                                    color: Color(
                                        0xff000000),
                                    fontSize: 30,
                                    fontWeight: FontWeight.w700),)
                            ),
                          ),
                          Center(
                            child: Container(
                                margin: EdgeInsets.only( bottom: 20, left: 50),
                                child: IconButton(
                                  onPressed: () {
                                    player.stop();
                                    player.play(AssetSource(
                                        'videos/'+ voice + '.mp4'));
                                  },
                                  icon: Icon(Icons.play_arrow_rounded),
                                  iconSize: 89,
                                  color: Color(
                                      0xff02baff),
                                )
                            ),
                          )
                        ],
                      ),
                      if(word != "창문" && word != "지붕" && word != "도망가다" && word != "형제" && word != "구렁이" && word != "흥부는 착하고 놀부는 나쁘다")
                      for(int i =0; i < jamoList.length; i++)
                        if(jamoList[i] != " " && jamoList[i] != "ㅇ")
                        Row(
                          children: [
                            Column(
                              children: [
                                Container(
                                    margin: EdgeInsets.only(top: 24),
                                    child: Text(jamoList[i], style: TextStyle(color: Color(
                                        0xff692d32),
                                        fontSize: 40,
                                        fontWeight: FontWeight.w700),)
                                ),
                                Container(
                                  child: IconButton(onPressed: () {},
                                    icon: Image.asset('assets/images/' + jamoList[i] + '.png'),
                                    iconSize: 280,
                                  ),
                                ),
                              ],
                            ),
                            if(i != jamoList.length-1)
                            Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 150),
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.arrow_right), iconSize: 90,
                                  ),
                                ),
                              ],
                            ),

                          ],
                        ),
                      if(word == "창문" || word == "지붕" || word == "도망가다" || word == "형제" || word == "구렁이" || word == "흥부는 착하고 놀부는 나쁘다")
                        for(int i =0; i < jamoList.length; i++)
                          if(jamoList[i] != " ")
                            Row(
                              children: [
                                Column(
                                  children: [
                                    Container(
                                        margin: EdgeInsets.only(top: 24),
                                        child: Text(jamoList[i], style: TextStyle(color: Color(
                                            0xff692d32),
                                            fontSize: 40,
                                            fontWeight: FontWeight.w700),)
                                    ),
                                    Container(
                                      child: IconButton(onPressed: () {},
                                        icon: Image.asset('assets/images/' + jamoList[i] + '.png'),
                                        iconSize: 280,
                                      ),
                                    ),
                                  ],
                                ),
                                if(i != jamoList.length-1)
                                  Column(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(top: 150),
                                        child: IconButton(
                                          onPressed: () {},
                                          icon: Icon(Icons.arrow_right), iconSize: 90,
                                        ),
                                      ),
                                    ],
                                  ),
                              ],
                            ),
                    ]
                ),
              ),
            )
        )
    );
  }

}