import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/services.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:speak_together/rabbit_turtle_2.dart';
import 'package:speak_together/rabbit_turtle_3.dart';
import 'package:speak_together/rabbit_turtle_4.dart';
import 'baby_pig_2.dart';
import 'baby_pig_4.dart';
import 'tutorial.dart';
import 'speech_video.dart';

class RabbitBabyPig3 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _RabbitBabyPig3State();
}

class _RabbitBabyPig3State extends State<RabbitBabyPig3> {
  late Timer _timer;
  late String story;

  _RabbitBabyPig3State() {
    _timer = Timer(const Duration(seconds: 0), () {
      setState(() {
        final player = AudioPlayer();
        player.play(AssetSource('sounds/rabbit_story2_3.wav'));
        story = "첫째 돼지가 둘째 돼지의 집으로 숨자";
      });
    });

    _timer = Timer(const Duration(seconds: 3), () {
      setState(() {
        story = "늑대는 이렇게 말했어요.";
      });
    });
    _timer = Timer(const Duration(seconds: 5), () {
      setState(() {
        story = '"이런 가벼운 나무는 내가 다 부술 수 있지!"';
      });
    });
    _timer = Timer(const Duration(seconds: 10), () {
      setState(() {
        story = '늑대가 둘째 돼지의 집에 빠르게 달려와 부딪히자';
      });
    });
    _timer = Timer(const Duration(seconds: 13), () {
      setState(() {
        story = "나무 집은 힘 없이 부서지고 말았어요.";
      });
    });
    _timer = Timer(const Duration(seconds: 17), () {
      setState(() {
        story = '"으아아! 도망쳐!"';
      });
    });
    _timer = Timer(const Duration(seconds: 20), () {
      setState(() {
        story = '이번엔 두 아기 돼지가 셋째 돼지의 집으로 숨었어요.';
      });
    });
    _timer = Timer(const Duration(seconds: 25), () {
      setState(() {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => RabbitBabyPig3_1()));
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
                      image: AssetImage('assets/images/돼지3.png'),
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
class RabbitBabyPig3_1 extends StatelessWidget {
  const RabbitBabyPig3_1({Key? key}) : super(key: key);

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
                  image: AssetImage('assets/images/돼지3.png'),
                ),
              ),
              child: Stack(
                  children: [
                    Opacity(
                      opacity:0.2,
                      child: Container(
                        width: 140,
                        height: 140,
                        margin: EdgeInsets.only(top: 120, bottom: 80, left: 130, right: 0),
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
                                MaterialPageRoute(builder: (context) => SpeechVideo("rabbit_ouside", "바깥", "부수는__늑대")));},
                        ),
                      ),
                    ),
                    Opacity(
                      opacity:0.2,
                      child: Container(
                        width: 100,
                        height: 100,
                        margin: EdgeInsets.only(top: 40, bottom: 80, left: 430, right: 0),
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
                                MaterialPageRoute(builder: (context) => SpeechVideo("rabbit_new_house", "새로 집을 지었다", "둘째의_판자집")));},
                        ),
                      ),
                    ),
                    Opacity(
                      opacity:0.2,
                      child: Container(
                        width: 100,
                        height: 100,
                        margin: EdgeInsets.only(top: 120, bottom: 100, left: 650, right: 0),
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
                                MaterialPageRoute(builder: (context) => SpeechVideo("rabbit_hide", "숨다", "숨은__돼지")));},
                        ),
                      ),
                    ),
                    Opacity(
                      opacity:0.2,
                      child: Container(
                        width: 120,
                        height: 120,
                        margin: EdgeInsets.only(top: 160, bottom: 50, left: 400, right: 0),
                        child: FloatingActionButton(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.announcement_outlined,
                                size: 90,
                              ),
                            ],
                          ),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => SpeechVideo("rabbit_house_break", "집이 모두 무너졌어요", "집이_모두_무너졌어요")));},
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
                            MaterialPageRoute(builder: (context) => RabbitBabyPig4()));
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

class TurtleBabyPig3 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _TurtleBabyPig3State();
}

class _TurtleBabyPig3State extends State<TurtleBabyPig3> {
  late Timer _timer;
  late String story;

  _TurtleBabyPig3State() {
    _timer = Timer(const Duration(seconds: 0), () {
      setState(() {
        final player = AudioPlayer();
        player.play(AssetSource('sounds/turtle_story2_3.wav'));
        story = "첫째 돼지가 둘째 돼지의 집으로 숨자";
      });
    });

    _timer = Timer(const Duration(seconds: 8), () {
      setState(() {
        story = "늑대는 이렇게 말했어요.";
      });
    });
    _timer = Timer(const Duration(seconds: 14), () {
      setState(() {
        story = '"이런 가벼운 나무는 내가 다 부술 수 있지!"';
      });
    });
    _timer = Timer(const Duration(seconds: 26), () {
      setState(() {
        story = '늑대가 둘째 돼지의 집에 빠르게 달려와 부딪히자';
      });
    });
    _timer = Timer(const Duration(seconds: 36), () {
      setState(() {
        story = "나무 집은 힘 없이 부서지고 말았어요.";
      });
    });
    _timer = Timer(const Duration(seconds: 46), () {
      setState(() {
        story = '"으아아! 도망쳐!"';
      });
    });
    _timer = Timer(const Duration(seconds: 51), () {
      setState(() {
        story = '이번엔 두 아기 돼지가 셋째 돼지의 집으로 숨었어요.';
      });
    });
    _timer = Timer(const Duration(seconds: 62), () {
      setState(() {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => TurtleBabyPig3_1()));
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
                      image: AssetImage('assets/images/돼지3.png'),
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
class TurtleBabyPig3_1 extends StatelessWidget {
  const TurtleBabyPig3_1({Key? key}) : super(key: key);

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
                  image: AssetImage('assets/images/돼지3.png'),
                ),
              ),
              child: Stack(
                  children: [
                    Opacity(
                      opacity:0.2,
                      child: Container(
                        width: 140,
                        height: 140,
                        margin: EdgeInsets.only(top: 120, bottom: 80, left: 130, right: 0),
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
                                MaterialPageRoute(builder: (context) => SpeechVideo("turtle_outside", "바깥", "부수는__늑대")));},
                        ),
                      ),
                    ),
                    Opacity(
                      opacity:0.2,
                      child: Container(
                        width: 100,
                        height: 100,
                        margin: EdgeInsets.only(top: 40, bottom: 80, left: 430, right: 0),
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
                                MaterialPageRoute(builder: (context) => SpeechVideo("turtle_new_house_build", "새로 집을 지었다", "둘째의_판자집")));},
                        ),
                      ),
                    ),
                    Opacity(
                      opacity:0.2,
                      child: Container(
                        width: 100,
                        height: 100,
                        margin: EdgeInsets.only(top: 120, bottom: 100, left: 650, right: 0),
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
                                MaterialPageRoute(builder: (context) => SpeechVideo("turtle_hide", "숨다", "숨은__돼지")));},
                        ),
                      ),
                    ),
                    Opacity(
                      opacity:0.2,
                      child: Container(
                        width: 120,
                        height: 120,
                        margin: EdgeInsets.only(top: 160, bottom: 50, left: 400, right: 0),
                        child: FloatingActionButton(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.announcement_outlined,
                                size: 90,
                              ),
                            ],
                          ),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => SpeechVideo("turtle_house_break", "집이 모두 무너졌어요", "집이_모두_무너졌어요")));},
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
                            MaterialPageRoute(builder: (context) => TurtleBabyPig4()));
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