import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/services.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:speak_together/baby_pig_2.dart';
import 'package:speak_together/rabbit_turtle_2.dart';
import 'package:speak_together/rabbit_turtle_3.dart';
import 'package:speak_together/rabbit_turtle_4.dart';
import 'heungbu_2.dart';
import 'tutorial.dart';
import 'speech_video.dart';

class RabbitHeungbu1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _RabbitHeungbu1State();
}

class _RabbitHeungbu1State extends State<RabbitHeungbu1> {
  late Timer _timer;
  late String story;

  _RabbitHeungbu1State() {
    _timer = Timer(const Duration(seconds: 0), () {
      setState(() {
        final player = AudioPlayer();
        player.play(AssetSource('sounds/rabbit_story3_1.wav'));
        story = "흥부와 놀부";
      });
    });

    _timer = Timer(const Duration(seconds: 3), () {
      setState(() {
        story = "옛날 옛적에 흥부와 놀부라는 형제가 살았어요.";
      });
    });
    _timer = Timer(const Duration(seconds: 8), () {
      setState(() {
        story = "아버지가 돌아가시고 못된 놀부는";
      });
    });
    _timer = Timer(const Duration(seconds: 11), () {
      setState(() {
        story = '착한 흥부에게 돈 한 푼 주지 않고 쫓아냈어요.';
      });
    });
    _timer = Timer(const Duration(seconds: 16), () {
      setState(() {
        story = "그래서 흥부는 부인과 스무 명의 자식들과 함께";
      });
    });
    _timer = Timer(const Duration(seconds: 20), () {
      setState(() {
        story = "가난하게 살았답니다.";
      });
    });
    _timer = Timer(const Duration(seconds: 23), () {
      setState(() {
        story = '"형님, 저희 자식들이 굶고 있으니 쌀을 조금만 내려주세요."';
      });
    });
    _timer = Timer(const Duration(seconds: 30), () {
      setState(() {
        story = "흥부는 놀부에게 쌀이라도 얻고 싶었지만";
      });
    });
    _timer = Timer(const Duration(seconds: 34), () {
      setState(() {
        story = '"어머! 이 사람이 더럽게!"';
      });
    });
    _timer = Timer(const Duration(seconds: 37), () {
      setState(() {
        story = "놀부 아내에게 주걱으로 뺨을 맞고 돌아왔어요.";
      });
    });
    _timer = Timer(const Duration(seconds: 42), () {
      setState(() {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => RabbitHeungbu1_1()));
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
                      image: AssetImage('assets/images/흥부1.png'),
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
class RabbitHeungbu1_1 extends StatelessWidget {
  const RabbitHeungbu1_1({Key? key}) : super(key: key);

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
                  image: AssetImage('assets/images/흥부1.png'),
                ),
              ),
              child: Stack(
                  children: [
                    Opacity(
                      opacity:0.2,
                      child: Container(
                        width: 100,
                        height: 100,
                        margin: EdgeInsets.only(top: 220, bottom: 20, left: 390,),
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
                                MaterialPageRoute(builder: (context) => SpeechVideo("rabbit_brother", "형제", "형제")));},
                        ),
                      ),
                    ),
                    Opacity(
                      opacity:0.2,
                      child: Container(
                        width: 80,
                        height: 80,
                        margin: EdgeInsets.only(top: 20, left: 420),
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
                                MaterialPageRoute(builder: (context) => SpeechVideo("rabbit_rice", "쌀", "부엌")));},
                        ),
                      ),
                    ),
                    Opacity(
                      opacity:0.2,
                      child: Container(
                        width: 80,
                        height: 80,
                        margin: EdgeInsets.only(top: 20, bottom: 80, left: 50, right: 0),
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
                                MaterialPageRoute(builder: (context) => SpeechVideo("rabbit_bbaym", "뺨", "뺨")));},
                        ),
                      ),
                    ),
                    Opacity(
                      opacity:0.2,
                      child: Container(
                        width: 100,
                        height: 100,
                        margin: EdgeInsets.only(top: 100, bottom: 100, left: 590, right: 0),
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
                                MaterialPageRoute(builder: (context) => SpeechVideo("rabbit_kitchen", "부엌", "부엌")));},
                        ),
                      ),
                    ),
                    Opacity(
                      opacity:0.2,
                      child: Container(
                        width: 80,
                        height: 80,
                        margin: EdgeInsets.only(top: 20, bottom: 200, left: 140, right: 0),
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
                                MaterialPageRoute(builder: (context) => SpeechVideo("rabbit_juguk", "주걱", "주걱")));},
                        ),
                      ),
                    ),
                    Opacity(
                      opacity:0.2,
                      child: Container(
                        width: 100,
                        height: 100,
                        margin: EdgeInsets.only(top: 200, bottom: 20, left: 180, right: 0),
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
                                MaterialPageRoute(builder: (context) => SpeechVideo("rabbit_heungbu_nolbu", "옛날에 흥부와 놀부가 살았어요", "형제")));},
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
                            MaterialPageRoute(builder: (context) => RabbitHeungbu2()));
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

class TurtleHeungbu1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _TurtleHeungbu1State();
}

class _TurtleHeungbu1State extends State<TurtleHeungbu1> {
  late Timer _timer;
  late String story;

  _TurtleHeungbu1State() {
    _timer = Timer(const Duration(seconds: 0), () {
      setState(() {
        final player = AudioPlayer();
        player.play(AssetSource('sounds/turtle_story3_1.wav'));
        story = "흥부와 놀부";
      });
    });
    _timer = Timer(const Duration(seconds: 6), () {
      setState(() {
        story = "옛날 옛적에 흥부와 놀부라는 형제가 살았어요.";
      });
    });
    _timer = Timer(const Duration(seconds: 19), () {
      setState(() {
        story = "아버지가 돌아가시고 못된 놀부는";
      });
    });
    _timer = Timer(const Duration(seconds: 27), () {
      setState(() {
        story = '착한 흥부에게 돈 한 푼 주지 않고 쫓아냈어요.';
      });
    });
    _timer = Timer(const Duration(seconds: 39), () {
      setState(() {
        story = "그래서 흥부는 부인과 스무 명의 자식들과 함께";
      });
    });
    _timer = Timer(const Duration(seconds: 51), () {
      setState(() {
        story = "가난하게 살았답니다.";
      });
    });
    _timer = Timer(const Duration(seconds: 57), () {
      setState(() {
        story = '"형님, 저희 자식들이 굶고 있으니 쌀을 조금만 내려주세요."';
      });
    });
    _timer = Timer(const Duration(seconds: 72), () {
      setState(() {
        story = "흥부는 놀부에게 쌀이라도 얻고 싶었지만";
      });
    });
    _timer = Timer(const Duration(seconds: 83), () {
      setState(() {
        story = '"어머! 이 사람이 더럽게!"';
      });
    });
    _timer = Timer(const Duration(seconds: 92), () {
      setState(() {
        story = "놀부 아내에게 주걱으로 뺨을 맞고 돌아왔어요.";
      });
    });
    _timer = Timer(const Duration(seconds: 105), () {
      setState(() {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => TurtleHeungbu1_1()));
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
                      image: AssetImage('assets/images/흥부1.png'),
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
class TurtleHeungbu1_1 extends StatelessWidget {
  const TurtleHeungbu1_1({Key? key}) : super(key: key);

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
                  image: AssetImage('assets/images/흥부1.png'),
                ),
              ),
              child: Stack(
                  children: [
                    Opacity(
                      opacity:0.2,
                      child: Container(
                        width: 100,
                        height: 100,
                        margin: EdgeInsets.only(top: 220, bottom: 20, left: 390,),
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
                                MaterialPageRoute(builder: (context) => SpeechVideo("turtle_brother", "형제", "형제")));},
                        ),
                      ),
                    ),
                    Opacity(
                      opacity:0.2,
                      child: Container(
                        width: 80,
                        height: 80,
                        margin: EdgeInsets.only(top: 20, left: 420),
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
                                MaterialPageRoute(builder: (context) => SpeechVideo("turtle_rice", "쌀", "부엌")));},
                        ),
                      ),
                    ),
                    Opacity(
                      opacity:0.2,
                      child: Container(
                        width: 80,
                        height: 80,
                        margin: EdgeInsets.only(top: 20, bottom: 80, left: 50, right: 0),
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
                                MaterialPageRoute(builder: (context) => SpeechVideo("turtle_bbaym", "뺨", "뺨")));},
                        ),
                      ),
                    ),
                    Opacity(
                      opacity:0.2,
                      child: Container(
                        width: 100,
                        height: 100,
                        margin: EdgeInsets.only(top: 100, bottom: 100, left: 590, right: 0),
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
                                MaterialPageRoute(builder: (context) => SpeechVideo("turtle_kitchen", "부엌", "부엌")));},
                        ),
                      ),
                    ),
                    Opacity(
                      opacity:0.2,
                      child: Container(
                        width: 80,
                        height: 80,
                        margin: EdgeInsets.only(top: 20, bottom: 200, left: 140, right: 0),
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
                                MaterialPageRoute(builder: (context) => SpeechVideo("turtle_juguk", "주걱", "주걱")));},
                        ),
                      ),
                    ),
                    Opacity(
                      opacity:0.2,
                      child: Container(
                        width: 100,
                        height: 100,
                        margin: EdgeInsets.only(top: 200, bottom: 20, left: 180, right: 0),
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
                                MaterialPageRoute(builder: (context) => SpeechVideo("turtle_heongbu_nolbu", "옛날에 흥부와 놀부가 살았어요", "형제")));},
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
                            MaterialPageRoute(builder: (context) => TurtleHeungbu2()));
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