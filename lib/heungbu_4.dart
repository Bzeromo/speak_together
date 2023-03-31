import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/services.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:speak_together/app_main_theme_slow.dart';
import 'package:speak_together/baby_pig_2.dart';
import 'package:speak_together/rabbit_turtle_2.dart';
import 'package:speak_together/rabbit_turtle_3.dart';
import 'package:speak_together/rabbit_turtle_4.dart';
import 'app_main_theme.dart';
import 'tutorial.dart';
import 'speech_video.dart';

class RabbitHeungbu4 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _RabbitHeungbu4State();
}

class _RabbitHeungbu4State extends State<RabbitHeungbu4> {
  late Timer _timer;
  late String story;

  _RabbitHeungbu4State() {
    _timer = Timer(const Duration(seconds: 0), () {
      setState(() {
        final player = AudioPlayer();
        player.play(AssetSource('sounds/rabbit_story3_4.wav'));
        story = "이 소식을 들은 놀부는 흥부에게 그 비결을 들었어요.";
      });
    });
    _timer = Timer(const Duration(seconds: 6), () {
      setState(() {
        story = "놀부는 더 큰 부자가 되기 위해";
      });
    });
    _timer = Timer(const Duration(seconds: 9), () {
      setState(() {
        story = '자신의 집에 둥지를 튼 제비를 잡았어요.';
      });
    });
    _timer = Timer(const Duration(seconds: 13), () {
      setState(() {
        story = '그리고 일부러 다리를 부러뜨린 뒤에 고쳐주었어요.';
      });
    });
    _timer = Timer(const Duration(seconds: 17), () {
      setState(() {
        story = '"내년에 너도 박씨를 가져와야 한다. 낄낄낄"';
      });
    });
    _timer = Timer(const Duration(seconds: 21), () {
      setState(() {
        story = '그리고 일 년이 지나자 제비가 박씨를 가져왔어요.';
      });
    });
    _timer = Timer(const Duration(seconds: 26), () {
      setState(() {
        story = '놀부는 그것을 심어 박을 키워 쪼갰어요.';
      });
    });
    _timer = Timer(const Duration(seconds: 30), () {
      setState(() {
        story = '그런데 박 속에서 보물이 아니라 무서운 도깨비가 나왔어요!';
      });
    });
    _timer = Timer(const Duration(seconds: 35), () {
      setState(() {
        story = '"이 고약한 녀석! 너는 혼이 나야 한다!"';
      });
    });
    _timer = Timer(const Duration(seconds: 39), () {
      setState(() {
        story = '놀부를 마구 두들겨 패고 집까지 부숴버리자';
      });
    });
    _timer = Timer(const Duration(seconds: 43), () {
      setState(() {
        story = '놀부 가족은 하루아침에 거지가 되고 말았어요.';
      });
    });
    _timer = Timer(const Duration(seconds: 47), () {
      setState(() {
        story = '"나도 동생처럼 착하게 살 걸! 아이고!"';
      });
    });
    _timer = Timer(const Duration(seconds: 50), () {
      setState(() {
        story = '놀부는 그렇게 말하며 엉엉 울었답니다.';
      });
    });
    _timer = Timer(const Duration(seconds: 55), () {
      setState(() {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => RabbitHeungbu4_1()));
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
                      image: AssetImage('assets/images/흥부4.png'),
                    ),
                  ),
                  child: Container(
                    margin: EdgeInsets.only(top: 10, bottom: 320),
                    child: Center(
                      child: Text(story, style: TextStyle(color: Color(0xffffffff), fontSize: 25, fontWeight: FontWeight.w700)),
                    ),
                  ),
                )
            )
        )
    );
  }
}
class RabbitHeungbu4_1 extends StatelessWidget {
  const RabbitHeungbu4_1({Key? key}) : super(key: key);

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
                  image: AssetImage('assets/images/흥부4.png'),
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
                                MaterialPageRoute(builder: (context) => SpeechVideo("rabbit_heungbu_good", "흥부는 착하고 놀부는 나쁘다", "무서워하는_-놀부")));},
                        ),
                      ),
                    ),
                    Opacity(
                      opacity:0.2,
                      child: Container(
                        width: 120,
                        height: 120,
                        margin: EdgeInsets.only(top: 70, bottom: 100, left: 330, right: 0),
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
                                MaterialPageRoute(builder: (context) => SpeechVideo("rabbit_ggaeby", "도깨비", "도깨비와_방망이")));},
                        ),
                      ),
                    ),
                    Opacity(
                      opacity:0.2,
                      child: Container(
                        width: 100,
                        height: 100,
                        margin: EdgeInsets.only(top: 70, bottom: 140, left: 190, right: 0),
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
                                MaterialPageRoute(builder: (context) => SpeechVideo("rabbit_bat", "방망이", "도깨비와_방망이")));},
                        ),
                      ),
                    ),
                    Container(
                      height: 90,
                      width: 120,
                      margin: EdgeInsets.only(top: 300, bottom: 10, right: 10, left: 610),
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

class TurtleHeungbu4 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _TurtleHeungbu4State();
}

class _TurtleHeungbu4State extends State<TurtleHeungbu4> {
  late Timer _timer;
  late String story;

  _TurtleHeungbu4State() {
    _timer = Timer(const Duration(seconds: 0), () {
      setState(() {
        final player = AudioPlayer();
        player.play(AssetSource('sounds/turtle_story3_4.wav'));
        story = "이 소식을 들은 놀부는 흥부에게 그 비결을 들었어요.";
      });
    });
    _timer = Timer(const Duration(seconds: 15), () {
      setState(() {
        story = "놀부는 더 큰 부자가 되기 위해";
      });
    });
    _timer = Timer(const Duration(seconds: 23), () {
      setState(() {
        story = '자신의 집에 둥지를 튼 제비를 잡았어요.';
      });
    });
    _timer = Timer(const Duration(seconds: 34), () {
      setState(() {
        story = '그리고 일부러 다리를 부러뜨린 뒤에 고쳐주었어요.';
      });
    });
    _timer = Timer(const Duration(seconds: 47), () {
      setState(() {
        story = '"내년에 너도 박씨를 가져와야 한다. 낄낄낄"';
      });
    });
    _timer = Timer(const Duration(seconds: 57), () {
      setState(() {
        story = '그리고 일 년이 지나자 제비가 박씨를 가져왔어요.';
      });
    });
    _timer = Timer(const Duration(seconds: 72), () {
      setState(() {
        story = '놀부는 그것을 심어 박을 키워 쪼갰어요.';
      });
    });
    _timer = Timer(const Duration(seconds: 83), () {
      setState(() {
        story = '그런데 박 속에서 보물이 아니라 무서운 도깨비가 나왔어요!';
      });
    });
    _timer = Timer(const Duration(seconds: 100), () {
      setState(() {
        story = '"이 고약한 녀석! 너는 혼이 나야 한다!"';
      });
    });
    _timer = Timer(const Duration(seconds: 111), () {
      setState(() {
        story = '놀부를 마구 두들겨 패고 집까지 부숴버리자';
      });
    });
    _timer = Timer(const Duration(seconds: 122), () {
      setState(() {
        story = '놀부 가족은 하루아침에 거지가 되고 말았어요.';
      });
    });
    _timer = Timer(const Duration(seconds: 135), () {
      setState(() {
        story = '"나도 동생처럼 착하게 살 걸! 아이고!"';
      });
    });
    _timer = Timer(const Duration(seconds: 145), () {
      setState(() {
        story = '놀부는 그렇게 말하며 엉엉 울었답니다.';
      });
    });
    _timer = Timer(const Duration(seconds: 154), () {
      setState(() {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => TurtleHeungbu4_1()));
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
                      image: AssetImage('assets/images/흥부4.png'),
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
class TurtleHeungbu4_1 extends StatelessWidget {
  const TurtleHeungbu4_1({Key? key}) : super(key: key);

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
                  image: AssetImage('assets/images/흥부4.png'),
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
                                MaterialPageRoute(builder: (context) => SpeechVideo("turtle_heungbu_good", "흥부는 착하고 놀부는 나쁘다", "무서워하는_-놀부")));},
                        ),
                      ),
                    ),
                    Opacity(
                      opacity:0.2,
                      child: Container(
                        width: 120,
                        height: 120,
                        margin: EdgeInsets.only(top: 70, bottom: 100, left: 330, right: 0),
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
                                MaterialPageRoute(builder: (context) => SpeechVideo("turtle_ggaeby", "도깨비", "도깨비와_방망이")));},
                        ),
                      ),
                    ),
                    Opacity(
                      opacity:0.2,
                      child: Container(
                        width: 100,
                        height: 100,
                        margin: EdgeInsets.only(top: 70, bottom: 140, left: 190, right: 0),
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
                                MaterialPageRoute(builder: (context) => SpeechVideo("turtle_bat", "방망이", "도깨비와_방망이")));},
                        ),
                      ),
                    ),
                    Container(
                      height: 90,
                      width: 120,
                      margin: EdgeInsets.only(top: 300, bottom: 10, right: 10, left: 610),
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