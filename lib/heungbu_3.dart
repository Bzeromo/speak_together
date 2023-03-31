import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/services.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:speak_together/baby_pig_2.dart';
import 'package:speak_together/rabbit_turtle_2.dart';
import 'package:speak_together/rabbit_turtle_3.dart';
import 'package:speak_together/rabbit_turtle_4.dart';
import 'heungbu_4.dart';
import 'tutorial.dart';
import 'speech_video.dart';

class RabbitHeungbu3 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _RabbitHeungbu3State();
}

class _RabbitHeungbu3State extends State<RabbitHeungbu3> {
  late Timer _timer;
  late String story;

  _RabbitHeungbu3State() {
    _timer = Timer(const Duration(seconds: 0), () {
      setState(() {
        final player = AudioPlayer();
        player.play(AssetSource('sounds/rabbit_story3_3.wav'));
        story = "그리고 일 년이 지났어요.";
      });
    });
    _timer = Timer(const Duration(seconds: 3), () {
      setState(() {
        story = "어느 날 흥부 앞에 제비가 박씨를 떨어뜨리고 갔어요.";
      });
    });
    _timer = Timer(const Duration(seconds: 9), () {
      setState(() {
        story = '그러자 흥부는 그 박이라도 먹기 위해';
      });
    });
    _timer = Timer(const Duration(seconds: 12), () {
      setState(() {
        story = '박씨를 지붕 위에 심었어요.';
      });
    });
    _timer = Timer(const Duration(seconds: 16), () {
      setState(() {
        story = "그런데 박이 놀랄 정도로 거대하게 자랐어요!";
      });
    });
    _timer = Timer(const Duration(seconds: 20), () {
      setState(() {
        story = '흥부 가족은 잘 자란 박을 꺼내서 박을 쪼갰답니다.';
      });
    });
    _timer = Timer(const Duration(seconds: 25), () {
      setState(() {
        story = '그러자 박 속에서 엄청나게 많은 쌀과 금은보화가 나왔어요.';
      });
    });
    _timer = Timer(const Duration(seconds: 30), () {
      setState(() {
        story = '마지막에는 커다란 기와집도 나와서';
      });
    });
    _timer = Timer(const Duration(seconds: 33), () {
      setState(() {
        story = '흥부네는 순식간에 부자가 되었어요.';
      });
    });
    _timer = Timer(const Duration(seconds: 37), () {
      setState(() {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => RabbitHeungbu3_1()));
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
                      image: AssetImage('assets/images/흥부3.png'),
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
class RabbitHeungbu3_1 extends StatelessWidget {
  const RabbitHeungbu3_1({Key? key}) : super(key: key);

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
                  image: AssetImage('assets/images/흥부3.png'),
                ),
              ),
              child: Stack(
                  children: [
                    Opacity(
                      opacity:0.2,
                      child: Container(
                        width: 100,
                        height: 100,
                        margin: EdgeInsets.only(top: 240, bottom: 10, left: 340,),
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
                                MaterialPageRoute(builder: (context) => SpeechVideo("rabbit_treasure", "보물", "금은보화")));},
                        ),
                      ),
                    ),
                    Opacity(
                      opacity:0.2,
                      child: Container(
                        width: 80,
                        height: 80,
                        margin: EdgeInsets.only(top: 200, bottom: 20, left: 340,),
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
                                MaterialPageRoute(builder: (context) => SpeechVideo("rabbit_many", "많다", "놀란_부부")));},
                        ),
                      ),
                    ),

                    Opacity(
                      opacity:0.2,
                      child: Container(
                        width: 80,
                        height: 80,
                        margin: EdgeInsets.only(top: 20, left: 160),
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
                                MaterialPageRoute(builder: (context) => SpeechVideo("rabbit_bat", "박", "박열매")));},
                        ),
                      ),
                    ),
                    Opacity(
                      opacity:0.2,
                      child: Container(
                        width: 100,
                        height: 100,
                        margin: EdgeInsets.only(top: 20, bottom: 100, left: 590, right: 0),
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
                                MaterialPageRoute(builder: (context) => SpeechVideo("rabbit_oneyear", "일 년", "초가집")));},
                        ),
                      ),
                    ),
                    Opacity(
                      opacity:0.2,
                      child: Container(
                        width: 100,
                        height: 100,
                        margin: EdgeInsets.only(top: 70, bottom: 100, left: 300, right: 0),
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
                                MaterialPageRoute(builder: (context) => SpeechVideo("rabbit_bakseed", "박씨를 심으면 박이 자랄거야", "놀란아이들")));},
                        ),
                      ),
                    ),
                    Opacity(
                      opacity:0.2,
                      child: Container(
                        width: 100,
                        height: 100,
                        margin: EdgeInsets.only(top: 40, bottom: 180, left: 220, right: 0),
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
                                MaterialPageRoute(builder: (context) => SpeechVideo("rabbit_seed", "씨앗", "박열매")));},
                        ),
                      ),
                    ),
                    Container(
                      height: 90,
                      width: 120,
                      margin: EdgeInsets.only(top: 300, bottom: 10, right: 10, left: 610),
                      child: ElevatedButton(
                          child: Text('다음'), onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => RabbitHeungbu4()));
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

class TurtleHeungbu3 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _TurtleHeungbu3State();
}

class _TurtleHeungbu3State extends State<TurtleHeungbu3> {
  late Timer _timer;
  late String story;

  _TurtleHeungbu3State() {
    _timer = Timer(const Duration(seconds: 0), () {
      setState(() {
        final player = AudioPlayer();
        player.play(AssetSource('sounds/turtle_story3_3.wav'));
        story = "그리고 일 년이 지났어요.";
      });
    });
    _timer = Timer(const Duration(seconds: 8), () {
      setState(() {
        story = "어느 날 흥부 앞에 제비가 박씨를 떨어뜨리고 갔어요.";
      });
    });
    _timer = Timer(const Duration(seconds: 20), () {
      setState(() {
        story = '그러자 흥부는 그 박이라도 먹기 위해';
      });
    });
    _timer = Timer(const Duration(seconds: 30), () {
      setState(() {
        story = '박씨를 지붕에 심었어요.';
      });
    });
    _timer = Timer(const Duration(seconds: 38), () {
      setState(() {
        story = "그런데 박이 놀랄 정도로 거대하게 자랐어요!";
      });
    });
    _timer = Timer(const Duration(seconds: 53), () {
      setState(() {
        story = '흥부 가족은 잘 자란 박을 꺼내서 박을 쪼갰답니다.';
      });
    });
    _timer = Timer(const Duration(seconds: 68), () {
      setState(() {
        story = '그러자 박 속에서 엄청나게 많은 쌀과 금은보화가 나왔어요.';
      });
    });
    _timer = Timer(const Duration(seconds: 86), () {
      setState(() {
        story = '마지막에는 커다란 기와집도 나와서';
      });
    });
    _timer = Timer(const Duration(seconds: 95), () {
      setState(() {
        story = '흥부네는 순식간에 부자가 되었어요.';
      });
    });
    _timer = Timer(const Duration(seconds: 105), () {
      setState(() {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => TurtleHeungbu3_1()));
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
                      image: AssetImage('assets/images/흥부3.png'),
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
class TurtleHeungbu3_1 extends StatelessWidget {
  const TurtleHeungbu3_1({Key? key}) : super(key: key);

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
                  image: AssetImage('assets/images/흥부3.png'),
                ),
              ),
              child: Stack(
                  children: [
                    Opacity(
                      opacity:0.2,
                      child: Container(
                        width: 100,
                        height: 100,
                        margin: EdgeInsets.only(top: 240, bottom: 10, left: 340,),
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
                                MaterialPageRoute(builder: (context) => SpeechVideo("turtle_treasure", "보물", "금은보화")));},
                        ),
                      ),
                    ),
                    Opacity(
                      opacity:0.2,
                      child: Container(
                        width: 80,
                        height: 80,
                        margin: EdgeInsets.only(top: 200, bottom: 20, left: 340,),
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
                                MaterialPageRoute(builder: (context) => SpeechVideo("turtle_many", "많다", "놀란_부부")));},
                        ),
                      ),
                    ),

                    Opacity(
                      opacity:0.2,
                      child: Container(
                        width: 80,
                        height: 80,
                        margin: EdgeInsets.only(top: 20, left: 160),
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
                                MaterialPageRoute(builder: (context) => SpeechVideo("turtle_bak", "박", "박열매")));},
                        ),
                      ),
                    ),
                    Opacity(
                      opacity:0.2,
                      child: Container(
                        width: 100,
                        height: 100,
                        margin: EdgeInsets.only(top: 20, bottom: 100, left: 590, right: 0),
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
                                MaterialPageRoute(builder: (context) => SpeechVideo("turtle_oneyear", "일 년", "초가집")));},
                        ),
                      ),
                    ),
                    Opacity(
                      opacity:0.2,
                      child: Container(
                        width: 100,
                        height: 100,
                        margin: EdgeInsets.only(top: 70, bottom: 100, left: 300, right: 0),
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
                                MaterialPageRoute(builder: (context) => SpeechVideo("turtle_bakseed", "박씨를 심으면 박이 자랄거야", "놀란아이들")));},
                        ),
                      ),
                    ),
                    Opacity(
                      opacity:0.2,
                      child: Container(
                        width: 100,
                        height: 100,
                        margin: EdgeInsets.only(top: 40, bottom: 180, left: 220, right: 0),
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
                                MaterialPageRoute(builder: (context) => SpeechVideo("turtle_seed", "씨앗", "박열매")));},
                        ),
                      ),
                    ),
                    Container(
                      height: 90,
                      width: 120,
                      margin: EdgeInsets.only(top: 300, bottom: 10, right: 10, left: 610),
                      child: ElevatedButton(
                          child: Text('다음'), onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => TurtleHeungbu4()));
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