import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/services.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:speak_together/app_main_theme.dart';
import 'package:speak_together/app_main_theme_slow.dart';
import 'tutorial.dart';
import 'speech_video.dart';

class RabbitRabbitTurtle4 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _RabbitRabbitTurtle4State();
}

class _RabbitRabbitTurtle4State extends State<RabbitRabbitTurtle4> {
  late Timer _timer;
  late String story;

  _RabbitRabbitTurtle4State() {
    _timer = Timer(const Duration(seconds: 0), () {
      setState(() {
        final player = AudioPlayer();
        player.play(AssetSource('sounds/rabbit_story1_4.wav'));
        story = "\"이럴수가! 저 녀석이 언제 저기까지 갔지?\"";
      });
    });
    _timer = Timer(const Duration(seconds: 5), () {
      setState(() {
        story = "잠에서 깨어난 토끼가";
      });
    });
    _timer = Timer(const Duration(seconds: 7), () {
      setState(() {
        story = "그제서야 빠르게 뛰어갔지만";
      });
    });
    _timer = Timer(const Duration(seconds: 9), () {
      setState(() {
        story = '거북이는 이미 나무 아래에서';
      });
    });
    _timer = Timer(const Duration(seconds: 11), () {
      setState(() {
        story = '토끼를 기다리고 있었어요.';
      });
    });
    _timer = Timer(const Duration(seconds: 13), () {
      setState(() {
        story = '결국 거북이가 이기고';
      });
    });
    _timer = Timer(const Duration(seconds: 15), () {
      setState(() {
        story = '많은 동물들이 거북이를 축하해줬답니다.';
      });
    });
    _timer = Timer(const Duration(seconds: 19), () {
      setState(() {
        story = '"흑흑 내가 왜 거기서 잠을 잤담"';
      });
    });
    _timer = Timer(const Duration(seconds: 23), () {
      setState(() {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => RabbitRabbitTurtle1_4()));
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
                      image: AssetImage('assets/images/토거4.png'),
                    ),
                  ),
                  child: Container(
                    margin: EdgeInsets.only(top: 260, bottom: 40),
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
class RabbitRabbitTurtle1_4 extends StatelessWidget {
  const RabbitRabbitTurtle1_4({Key? key}) : super(key: key);

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
                  image: AssetImage('assets/images/토거4.png'),
                ),
              ),
              child: Stack(
                  children: [
                    Opacity(
                      opacity:0.2,
                      child: Container(
                        width: 100,
                        height: 100,
                        margin: EdgeInsets.only(top: 190, left: 170, right: 0),
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
                                MaterialPageRoute(builder: (context) => SpeechVideo("rabbit_sad", "슬프다", "울다토끼")));},
                        ),
                      ),
                    ),
                    Opacity(
                      opacity:0.2,
                      child: Container(
                        width: 60,
                        height: 60,
                        margin: EdgeInsets.only(top: 30, bottom: 20, left: 380, right: 0),
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
                                MaterialPageRoute(builder: (context) => SpeechVideo("rabbit_bird", "새", "새")));},
                        ),
                      ),
                    ),
                    Opacity(
                      opacity:0.2,
                      child: Container(
                        width: 80,
                        height: 80,
                        margin: EdgeInsets.only(top: 70, bottom: 60, left: 400, right: 0),
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
                                MaterialPageRoute(builder: (context) => SpeechVideo("rabbit_pleasure", "기쁘다", "기쁘다_거북이")));},
                        ),
                      ),
                    ),
                    Opacity(
                      opacity:0.2,
                      child: Container(
                        width: 100,
                        height: 100,
                        margin: EdgeInsets.only(top: 140, bottom: 60, left: 360, right: 0),
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
                                MaterialPageRoute(builder: (context) => SpeechVideo("rabbit_turtle_win", "거북이가 이겼어", "기쁘다_거북이")));},
                        ),
                      ),
                    ),
                    Opacity(
                      opacity:0.2,
                      child: Container(
                        width: 100,
                        height: 100,
                        margin: EdgeInsets.only(top: 200, left: 250, right: 0),
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
                                MaterialPageRoute(builder: (context) => SpeechVideo("rabbit_rabbit_lose", "토끼가 졌어", "울다토끼")));},
                        ),
                      ),
                    ),
                    Opacity(
                      opacity:0.2,
                      child: Container(
                        width: 100,
                        height: 100,
                        margin: EdgeInsets.only(top: 40, bottom: 200, left: 480, right: 0),
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
                                MaterialPageRoute(builder: (context) => SpeechVideo("rabbit_bear", "곰", "곰")));},
                        ),
                      ),
                    ),
                    Container(
                      height: 90,
                      width: 120,
                      margin: EdgeInsets.only(top: 300, bottom: 10, right: 10, left: 520),
                      child: ElevatedButton(
                          child: Text('나가기'), onPressed: () {
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

class TurtleRabbitTurtle4 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _TurtleRabbitTurtle4State();
}

class _TurtleRabbitTurtle4State extends State<TurtleRabbitTurtle4> {
  late Timer _timer;
  late String story;

  _TurtleRabbitTurtle4State() {
    _timer = Timer(const Duration(seconds: 0), () {
      setState(() {
        final player = AudioPlayer();
        player.play(AssetSource('sounds/turtle_story1_4.wav'));
        story = "\"이럴수가! 저 녀석이 언제 저기까지 갔지?\"";
      });
    });
    _timer = Timer(const Duration(seconds: 11), () {
      setState(() {
        story = "잠에서 깨어난 토끼가";
      });
    });
    _timer = Timer(const Duration(seconds: 16), () {
      setState(() {
        story = "그제서야 빠르게 뛰어갔지만";
      });
    });
    _timer = Timer(const Duration(seconds: 22), () {
      setState(() {
        story = '거북이는 이미 나무 아래에서';
      });
    });
    _timer = Timer(const Duration(seconds: 30), () {
      setState(() {
        story = '토끼를 기다리고 있었어요.';
      });
    });
    _timer = Timer(const Duration(seconds: 37), () {
      setState(() {
        story = '결국 거북이가 이기고';
      });
    });
    _timer = Timer(const Duration(seconds: 42), () {
      setState(() {
        story = '많은 동물들이 거북이를 축하해줬답니다.';
      });
    });
    _timer = Timer(const Duration(seconds: 51), () {
      setState(() {
        story = '"흑흑 내가 왜 거기서 잠을 잤담"';
      });
    });
    _timer = Timer(const Duration(seconds: 64), () {
      setState(() {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => TurtleRabbitTurtle1_4()));
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
                      image: AssetImage('assets/images/토거4.png'),
                    ),
                  ),
                  child: Container(
                    margin: EdgeInsets.only(top: 260, bottom: 40),
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
class TurtleRabbitTurtle1_4 extends StatelessWidget {
  const TurtleRabbitTurtle1_4({Key? key}) : super(key: key);

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
                  image: AssetImage('assets/images/토거4.png'),
                ),
              ),
              child: Stack(
                  children: [
                    Opacity(
                      opacity:0.2,
                      child: Container(
                        width: 100,
                        height: 100,
                        margin: EdgeInsets.only(top: 190, left: 170, right: 0),
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
                                MaterialPageRoute(builder: (context) => SpeechVideo("turtle_sad", "슬프다", "울다토끼")));},
                        ),
                      ),
                    ),
                    Opacity(
                      opacity:0.2,
                      child: Container(
                        width: 80,
                        height: 80,
                        margin: EdgeInsets.only(top: 30, bottom: 20, left: 380, right: 0),
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
                                MaterialPageRoute(builder: (context) => SpeechVideo("turtle_bird", "새", "새")));},
                        ),
                      ),
                    ),
                    Opacity(
                      opacity:0.2,
                      child: Container(
                        width: 80,
                        height: 80,
                        margin: EdgeInsets.only(top: 70, bottom: 60, left: 400, right: 0),
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
                                MaterialPageRoute(builder: (context) => SpeechVideo("turtle_pleasure", "기쁘다", "기쁘다_거북이")));},
                        ),
                      ),
                    ),
                    Opacity(
                      opacity:0.2,
                      child: Container(
                        width: 100,
                        height: 100,
                        margin: EdgeInsets.only(top: 140, bottom: 60, left: 360, right: 0),
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
                                MaterialPageRoute(builder: (context) => SpeechVideo("turtle_turtle_win", "거북이가 이겼어", "기쁘다_거북이")));},
                        ),
                      ),
                    ),
                    Opacity(
                      opacity:0.2,
                      child: Container(
                        width: 100,
                        height: 100,
                        margin: EdgeInsets.only(top: 200, left: 250, right: 0),
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
                                MaterialPageRoute(builder: (context) => SpeechVideo("turtle_rabbit_lose", "토끼가 졌어", "울다토끼")));},
                        ),
                      ),
                    ),
                    Opacity(
                      opacity:0.2,
                      child: Container(
                        width: 100,
                        height: 100,
                        margin: EdgeInsets.only(top: 40, bottom: 200, left: 480, right: 0),
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
                                MaterialPageRoute(builder: (context) => SpeechVideo("turtle_bear", "곰", "곰")));},
                        ),
                      ),
                    ),
                    Container(
                      height: 90,
                      width: 120,
                      margin: EdgeInsets.only(top: 300, bottom: 10, right: 10, left: 520),
                      child: ElevatedButton(
                          child: Text('나가기'), onPressed: () {
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