import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/services.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:speak_together/baby_pig_3.dart';
import 'package:speak_together/rabbit_turtle_2.dart';
import 'package:speak_together/rabbit_turtle_3.dart';
import 'package:speak_together/rabbit_turtle_4.dart';
import 'tutorial.dart';
import 'speech_video.dart';

class RabbitBabyPig2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _RabbitBabyPig2State();
}

class _RabbitBabyPig2State extends State<RabbitBabyPig2> {
  late Timer _timer;
  late String story;

  _RabbitBabyPig2State() {
    _timer = Timer(const Duration(seconds: 0), () {
      setState(() {
        final player = AudioPlayer();
        player.play(AssetSource('sounds/rabbit_story2_2.wav'));
        story = "첫째 돼지는 너무나도 게으른 나머지";
      });
    });

    _timer = Timer(const Duration(seconds: 3), () {
      setState(() {
        story = "구하기 쉬운 볏짚으로 집을 지었어요.";
      });
    });
    _timer = Timer(const Duration(seconds: 7), () {
      setState(() {
        story = "첫째보다 덜 게으른 둘째는 나무로 집을 짓고,";
      });
    });
    _timer = Timer(const Duration(seconds: 11), () {
      setState(() {
        story = '부지런한 셋째 돼지는 벽돌로 집을 지었답니다.';
      });
    });
    _timer = Timer(const Duration(seconds: 15), () {
      setState(() {
        story = "그런데 아기 돼지들을 멀리서 지켜보던";
      });
    });
    _timer = Timer(const Duration(seconds: 19), () {
      setState(() {
        story = "늑대가 찾아왔어요!";
      });
    });
    _timer = Timer(const Duration(seconds: 22), () {
      setState(() {
        story = '"이 정도 집은 후 불면 날아가지!"';
      });
    });
    _timer = Timer(const Duration(seconds: 26), () {
      setState(() {
        story = '"후!!!"';
      });
    });
      _timer = Timer(const Duration(seconds: 27), () {
        setState(() {
          story = "첫째 돼지의 집에 크게 바람을 불자";
        });
      });
    _timer = Timer(const Duration(seconds: 31), () {
      setState(() {
        story = "첫째 돼지의 집이 날아가고 말았어요!";
      });
    });
    _timer = Timer(const Duration(seconds: 34), () {
      setState(() {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => RabbitBabyPig2_1()));
      });
    });

  }

  @override
  void dispose() {
    super.dispose();
    _timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight]);

    return MaterialApp(
        home: Scaffold(
            body: SizedBox(
                width: double.infinity,
                height: double.infinity,
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/돼지2.png'),
                    ),
                  ),
                  child: Container(
                    margin: EdgeInsets.only(top: 10, bottom: 320),
                    child: Center(
                      child: Text(story, style: TextStyle(color: Color(0xff692d32), fontSize: 25, fontWeight: FontWeight.w700)),
                    ),
                  ),
                )
            )
        )
    );
  }
}
class RabbitBabyPig2_1 extends StatelessWidget {
  const RabbitBabyPig2_1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                  image: AssetImage('assets/images/돼지2.png'),
                ),
              ),
              child: Stack(
                  children: [
                    Opacity(
                      opacity:0.2,
                      child: Container(
                        width: 80,
                        height: 80,
                        margin: EdgeInsets.only(top: 20, left: 620),
                        child: FloatingActionButton(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.announcement_outlined,
                                size: 60,
                              ),
                            ],
                          ),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => SpeechVideo("rabbit_jip_blow", "짚이 바람에 날아갔어요", "짚으로_만든_집")));},
                        ),
                      ),
                    ),
                    Opacity(
                      opacity:0.2,
                      child: Container(
                        width: 50,
                        height: 50,
                        margin: EdgeInsets.only(bottom: 20, left: 540, right: 0),
                        child: FloatingActionButton(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.announcement_outlined,
                                size: 30,
                              ),
                            ],
                          ),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => SpeechVideo("rabbit_light", "가볍다", "짚으로_만든_집")));},
                        ),
                      ),
                    ),
                    Opacity(
                      opacity:0.2,
                      child: Container(
                        width: 140,
                        height: 140,
                        margin: EdgeInsets.only(top: 200, bottom: 80, left: 130, right: 0),
                        child: FloatingActionButton(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.announcement_outlined,
                                size: 60,
                              ),
                            ],
                          ),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => SpeechVideo("rabbit_wolf", "늑대", "바람부는_-늑대")));},
                        ),
                      ),
                    ),
                    Opacity(
                      opacity:0.2,
                      child: Container(
                        width: 100,
                        height: 100,
                        margin: EdgeInsets.only(top: 100, bottom: 100, left: 550, right: 0),
                        child: FloatingActionButton(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.announcement_outlined,
                                size: 70,
                              ),
                            ],
                          ),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => SpeechVideo("rabbit_windblow", "날아가다", "나무흔들")));},
                        ),
                      ),
                    ),
                    Opacity(
                      opacity:0.2,
                      child: Container(
                        width: 90,
                        height: 90,
                        margin: EdgeInsets.only(top: 160, bottom: 50, left: 400, right: 0),
                        child: FloatingActionButton(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.announcement_outlined,
                                size: 70,
                              ),
                            ],
                          ),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => SpeechVideo("rabbit_wind", "바람", "바람")));},
                        ),
                      ),
                    ),
                    Opacity(
                      opacity:0.2,
                      child: Container(
                        width: 70,
                        height: 70,
                        margin: EdgeInsets.only(top: 30, bottom: 200, left:500, right: 0),
                        child: FloatingActionButton(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.announcement_outlined,
                                size: 40,
                              ),
                            ],
                          ),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => SpeechVideo("rabbit_jip", "짚", "짚으로_만든_집")));},
                        ),
                      ),
                    ),
                    Container(
                      height: 90,
                      width: 120,
                      margin: EdgeInsets.only(top: 300, bottom: 10, right: 20, left: 610),
                      child: ElevatedButton(
                          child: Text('다음'), onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => RabbitBabyPig3()));
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
                    ),
                  ]
              ),
            ),
          )
      ),
    );
  }
}

class TurtleBabyPig2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _TurtleBabyPig2State();
}

class _TurtleBabyPig2State extends State<TurtleBabyPig2> {
  late Timer _timer;
  late String story;

  _TurtleBabyPig2State() {
    _timer = Timer(const Duration(seconds: 0), () {
      setState(() {
        final player = AudioPlayer();
        player.play(AssetSource('sounds/turtle_story2_2.wav'));
        story = "첫째 돼지는 너무나도 게으른 나머지";
      });
    });
    _timer = Timer(const Duration(seconds: 8), () {
      setState(() {
        story = "구하기 쉬운 볏짚으로 집을 지었어요.";
      });
    });
    _timer = Timer(const Duration(seconds: 16), () {
      setState(() {
        story = "첫째보다 덜 게으른 둘째는 나무로 집을 짓고,";
      });
    });
    _timer = Timer(const Duration(seconds: 27), () {
      setState(() {
        story = '부지런한 셋째 돼지는 벽돌로 집을 지었답니다.';
      });
    });
    _timer = Timer(const Duration(seconds: 39), () {
      setState(() {
        story = "그런데 아기 돼지들을 멀리서 지켜보던";
      });
    });
    _timer = Timer(const Duration(seconds: 47), () {
      setState(() {
        story = "늑대가 찾아왔어요!";
      });
    });
    _timer = Timer(const Duration(seconds: 53), () {
      setState(() {
        story = '"이 정도 집은 후 불면 날아가지!"';
      });
    });
    _timer = Timer(const Duration(seconds: 61), () {
      setState(() {
        story = '"후!!!"';
      });
    });
    _timer = Timer(const Duration(seconds: 64), () {
      setState(() {
        story = "첫째 돼지의 집에 크게 바람을 불자";
      });
    });
    _timer = Timer(const Duration(seconds: 71), () {
      setState(() {
        story = "첫째 돼지의 집이 날아가고 말았어요!";
      });
    });
    _timer = Timer(const Duration(seconds: 80), () {
      setState(() {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => TurtleBabyPig2_1()));
      });
    });

  }

  @override
  void dispose() {
    super.dispose();
    _timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight]);

    return MaterialApp(
        home: Scaffold(
            body: SizedBox(
                width: double.infinity,
                height: double.infinity,
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/돼지2.png'),
                    ),
                  ),
                  child: Container(
                    margin: EdgeInsets.only(top: 10, bottom: 320),
                    child: Center(
                      child: Text(story, style: TextStyle(color: Color(0xff692d32), fontSize: 25, fontWeight: FontWeight.w700)),
                    ),
                  ),
                )
            )
        )
    );
  }
}
class TurtleBabyPig2_1 extends StatelessWidget {
  const TurtleBabyPig2_1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                  image: AssetImage('assets/images/돼지2.png'),
                ),
              ),
              child: Stack(
                  children: [
                    Opacity(
                      opacity:0.2,
                      child: Container(
                        width: 80,
                        height: 80,
                        margin: EdgeInsets.only(top: 20, left: 620),
                        child: FloatingActionButton(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.announcement_outlined,
                                size: 60,
                              ),
                            ],
                          ),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => SpeechVideo("turtle_jip_flyout", "짚이 바람에 날아갔어요", "짚으로_만든_집")));},
                        ),
                      ),
                    ),
                    Opacity(
                      opacity:0.2,
                      child: Container(
                        width: 50,
                        height: 50,
                        margin: EdgeInsets.only(bottom: 20, left: 540, right: 0),
                        child: FloatingActionButton(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.announcement_outlined,
                                size: 30,
                              ),
                            ],
                          ),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => SpeechVideo("turtle_light", "가볍다", "짚으로_만든_집")));},
                        ),
                      ),
                    ),
                    Opacity(
                      opacity:0.2,
                      child: Container(
                        width: 140,
                        height: 140,
                        margin: EdgeInsets.only(top: 200, bottom: 80, left: 130, right: 0),
                        child: FloatingActionButton(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.announcement_outlined,
                                size: 60,
                              ),
                            ],
                          ),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => SpeechVideo("turtle_wolf", "늑대", "바람부는_-늑대")));},
                        ),
                      ),
                    ),
                    Opacity(
                      opacity:0.2,
                      child: Container(
                        width: 100,
                        height: 100,
                        margin: EdgeInsets.only(top: 100, bottom: 100, left: 550, right: 0),
                        child: FloatingActionButton(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.announcement_outlined,
                                size: 70,
                              ),
                            ],
                          ),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => SpeechVideo("turtle_flyout", "날아가다", "나무흔들")));},
                        ),
                      ),
                    ),
                    Opacity(
                      opacity:0.2,
                      child: Container(
                        width: 90,
                        height: 90,
                        margin: EdgeInsets.only(top: 160, bottom: 50, left: 400, right: 0),
                        child: FloatingActionButton(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.announcement_outlined,
                                size: 70,
                              ),
                            ],
                          ),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => SpeechVideo("turtle_wind", "바람", "바람")));},
                        ),
                      ),
                    ),
                    Opacity(
                      opacity:0.2,
                      child: Container(
                        width: 70,
                        height: 70,
                        margin: EdgeInsets.only(top: 30, bottom: 200, left:500, right: 0),
                        child: FloatingActionButton(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.announcement_outlined,
                                size: 40,
                              ),
                            ],
                          ),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => SpeechVideo("turtle_jip", "짚", "짚으로_만든_집")));},
                        ),
                      ),
                    ),
                    Container(
                      height: 90,
                      width: 120,
                      margin: EdgeInsets.only(top: 300, bottom: 10, right: 10, left: 520),
                      child: ElevatedButton(
                          child: Text('다음'), onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => TurtleBabyPig3()));
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
                    ),
                  ]
              ),
            ),
          )
      ),
    );
  }
}