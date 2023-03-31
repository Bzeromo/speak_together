import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/services.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:speak_together/app_main_theme.dart';
import 'package:speak_together/app_main_theme_slow.dart';
import 'package:speak_together/rabbit_turtle_2.dart';
import 'package:speak_together/rabbit_turtle_3.dart';
import 'package:speak_together/rabbit_turtle_4.dart';
import 'baby_pig_2.dart';
import 'tutorial.dart';
import 'speech_video.dart';

class RabbitBabyPig4 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _RabbitBabyPig4State();
}

class _RabbitBabyPig4State extends State<RabbitBabyPig4> {
  late Timer _timer;
  late String story;

  _RabbitBabyPig4State() {
    _timer = Timer(const Duration(seconds: 0), () {
      setState(() {
        final player = AudioPlayer();
        player.play(AssetSource('sounds/rabbit_story2_4.wav'));
        story = "늑대는 아직 자신이 넘쳤어요.";
      });
    });

    _timer = Timer(const Duration(seconds: 3), () {
      setState(() {
        story = '"흥! 벽돌이라고 해도 날려버릴 수 있지!"';
      });
    });
    _timer = Timer(const Duration(seconds: 7), () {
      setState(() {
        story = '"후!"';
      });
    });
    _timer = Timer(const Duration(seconds: 9), () {
      setState(() {
        story = '하지만 벽돌집은 꿈쩍도 하지 않았죠.';
      });
    });
    _timer = Timer(const Duration(seconds: 12), () {
      setState(() {
        story = "그러자 늑대는 굴뚝으로 몰래 들어가기로 했어요.";
      });
    });
    _timer = Timer(const Duration(seconds: 16), () {
      setState(() {
        story = '하지만 똑똑한 첫째 돼지는';
      });
    });
    _timer = Timer(const Duration(seconds: 19), () {
      setState(() {
        story = '굴뚝을 통해 들어오는 늑대를 뜨거운 솥에 빠뜨렸어요!';
      });
    });
    _timer = Timer(const Duration(seconds: 23), () {
      setState(() {
        story = '"아이고! 뜨거워! 늑대 살려!"';
      });
    });
    _timer = Timer(const Duration(seconds: 26), () {
      setState(() {
        story = '아기돼지 삼형제는 도망가는 늑대를 보며 깔깔깔 웃었답니다.';
      });
    });
    _timer = Timer(const Duration(seconds: 32), () {
      setState(() {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => RabbitBabyPig4_1()));
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
                      image: AssetImage('assets/images/돼지4.png'),
                    ),
                  ),
                  child: Container(
                    margin: EdgeInsets.only(top: 10, bottom: 320),
                    child: Center(
                      child: Text(story, style: TextStyle(color: Color(
                          0xffffffff), fontSize: 25, fontWeight: FontWeight.w700)),
                    ),
                  ),
                )
            )
        )
    );
  }
}
class RabbitBabyPig4_1 extends StatelessWidget {
  const RabbitBabyPig4_1({Key? key}) : super(key: key);

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
                  image: AssetImage('assets/images/돼지4.png'),
                ),
              ),
              child: Stack(
                  children: [
                    Opacity(
                      opacity:0.2,
                      child: Container(
                        width: 100,
                        height: 100,
                        margin: EdgeInsets.only(top: 200, bottom: 50, left: 160, right: 0),
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
                                MaterialPageRoute(builder: (context) => SpeechVideo("rabbit_runout", "도망가다", "도망가다_늑대")));},
                        ),
                      ),
                    ),
                    Opacity(
                      opacity:0.2,
                      child: Container(
                        width: 80,
                        height: 80,
                        margin: EdgeInsets.only(top: 20, bottom: 80, left: 430, right: 0),
                        child: FloatingActionButton(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.announcement_outlined,
                                size: 50,
                              ),
                            ],
                          ),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => SpeechVideo("rabbit_tuntun", "튼튼하다", "벽돌")));},
                        ),
                      ),
                    ),
                    Opacity(
                      opacity:0.2,
                      child: Container(
                        width: 80,
                        height: 80,
                        margin: EdgeInsets.only(top: 5, bottom: 80, left: 300, right: 0),
                        child: FloatingActionButton(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.announcement_outlined,
                                size: 50,
                              ),
                            ],
                          ),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => SpeechVideo("rabbit_ssadta", "쌓다", "벽돌")));},
                        ),
                      ),
                    ),
                    Opacity(
                      opacity:0.2,
                      child: Container(
                        width: 80,
                        height: 80,
                        margin: EdgeInsets.only(top: 20, bottom: 80, left: 130, right: 0),
                        child: FloatingActionButton(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.announcement_outlined,
                                size: 50,
                              ),
                            ],
                          ),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => SpeechVideo("rabbit_block", "벽돌", "벽돌")));},
                        ),
                      ),
                    ),
                    Opacity(
                      opacity:0.2,
                      child: Container(
                        width: 100,
                        height: 100,
                        margin: EdgeInsets.only(top: 80, bottom: 80, left: 650, right: 0),
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
                                MaterialPageRoute(builder: (context) => SpeechVideo("rabbit_block_tuntun", "이 벽돌은 튼튼해", "벽돌")));},
                        ),
                      ),
                    ),
                    Opacity(
                      opacity:0.2,
                      child: Container(
                        width: 120,
                        height: 120,
                        margin: EdgeInsets.only(top: 160, bottom: 50, left: 340, right: 0),
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
                                MaterialPageRoute(builder: (context) => SpeechVideo("rabbit_sot", "솥", "끓는솥")));},
                        ),
                      ),
                    ),
                    Container(
                      height: 90,
                      width: 120,
                      margin: EdgeInsets.only(top: 300, bottom: 10, right: 20, left: 610),
                      child: ElevatedButton(
                          child: Text('끝'), onPressed: () {
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
                    ),
                  ]
              ),
            ),
          )
      ),
    );
  }
}

class TurtleBabyPig4 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _TurtleBabyPig4State();
}

class _TurtleBabyPig4State extends State<TurtleBabyPig4> {
  late Timer _timer;
  late String story;

  _TurtleBabyPig4State() {
    _timer = Timer(const Duration(seconds: 0), () {
      setState(() {
        final player = AudioPlayer();
        player.play(AssetSource('sounds/turtle_story2_4.wav'));
        story = "늑대는 아직 자신이 넘쳤어요.";
      });
    });
    _timer = Timer(const Duration(seconds: 9), () {
      setState(() {
        story = '"흥! 벽돌이라고 해도 날려버릴 수 있지!"';
      });
    });
    _timer = Timer(const Duration(seconds: 18), () {
      setState(() {
        story = '"후!"';
      });
    });
    _timer = Timer(const Duration(seconds: 21), () {
      setState(() {
        story = '하지만 벽돌집은 꿈쩍도 하지 않았죠.';
      });
    });
    _timer = Timer(const Duration(seconds: 30), () {
      setState(() {
        story = "그러자 늑대는 굴뚝으로 몰래 들어가기로 했어요.";
      });
    });
    _timer = Timer(const Duration(seconds: 42), () {
      setState(() {
        story = '하지만 똑똑한 첫째 돼지는';
      });
    });
    _timer = Timer(const Duration(seconds: 49), () {
      setState(() {
        story = '굴뚝을 통해 들어오는 늑대를 뜨거운 솥에 빠뜨렸어요!';
      });
    });
    _timer = Timer(const Duration(seconds: 61), () {
      setState(() {
        story = '"아이고! 뜨거워! 늑대 살려!"';
      });
    });
    _timer = Timer(const Duration(seconds: 67), () {
      setState(() {
        story = '아기돼지 삼형제는 도망가는 늑대를 보며 깔깔깔 웃었답니다.';
      });
    });
    _timer = Timer(const Duration(seconds: 82), () {
      setState(() {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => TurtleBabyPig4_1()));
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
                      image: AssetImage('assets/images/돼지4.png'),
                    ),
                  ),
                  child: Container(
                    margin: EdgeInsets.only(top: 10, bottom: 320),
                    child: Center(
                      child: Text(story, style: TextStyle(color: Color(
                          0xffffffff), fontSize: 25, fontWeight: FontWeight.w700)),
                    ),
                  ),
                )
            )
        )
    );
  }
}
class TurtleBabyPig4_1 extends StatelessWidget {
  const TurtleBabyPig4_1({Key? key}) : super(key: key);

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
                  image: AssetImage('assets/images/돼지4.png'),
                ),
              ),
              child: Stack(
                  children: [
                    Opacity(
                      opacity:0.2,
                      child: Container(
                        width: 100,
                        height: 100,
                        margin: EdgeInsets.only(top: 200, bottom: 50, left: 160, right: 0),
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
                                MaterialPageRoute(builder: (context) => SpeechVideo("turtle_runout", "도망가다", "도망가다_늑대")));},
                        ),
                      ),
                    ),
                    Opacity(
                      opacity:0.2,
                      child: Container(
                        width: 80,
                        height: 80,
                        margin: EdgeInsets.only(top: 20, bottom: 80, left: 430, right: 0),
                        child: FloatingActionButton(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.announcement_outlined,
                                size: 50,
                              ),
                            ],
                          ),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => SpeechVideo("turtle_tuntun", "튼튼하다", "벽돌")));},
                        ),
                      ),
                    ),
                    Opacity(
                      opacity:0.2,
                      child: Container(
                        width: 80,
                        height: 80,
                        margin: EdgeInsets.only(top: 5, bottom: 80, left: 300, right: 0),
                        child: FloatingActionButton(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.announcement_outlined,
                                size: 50,
                              ),
                            ],
                          ),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => SpeechVideo("turtle_ssadta", "쌓다", "벽돌")));},
                        ),
                      ),
                    ),
                    Opacity(
                      opacity:0.2,
                      child: Container(
                        width: 80,
                        height: 80,
                        margin: EdgeInsets.only(top: 20, bottom: 80, left: 130, right: 0),
                        child: FloatingActionButton(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.announcement_outlined,
                                size: 50,
                              ),
                            ],
                          ),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => SpeechVideo("turtle_block", "벽돌", "벽돌")));},
                        ),
                      ),
                    ),
                    Opacity(
                      opacity:0.2,
                      child: Container(
                        width: 100,
                        height: 100,
                        margin: EdgeInsets.only(top: 80, bottom: 80, left: 650, right: 0),
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
                                MaterialPageRoute(builder: (context) => SpeechVideo("turtle_this_block_tuntun", "이 벽돌은 튼튼해", "벽돌")));},
                        ),
                      ),
                    ),
                    Opacity(
                      opacity:0.2,
                      child: Container(
                        width: 120,
                        height: 120,
                        margin: EdgeInsets.only(top: 160, bottom: 50, left: 340, right: 0),
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
                                MaterialPageRoute(builder: (context) => SpeechVideo("turtle_sot", "솥", "끓는솥")));},
                        ),
                      ),
                    ),
                    Container(
                      height: 90,
                      width: 120,
                      margin: EdgeInsets.only(top: 300, bottom: 10, right: 20, left: 610),
                      child: ElevatedButton(
                          child: Text('끝'), onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => AppMainThemeSlow()));
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