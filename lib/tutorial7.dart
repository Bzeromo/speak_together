import 'dart:async';
import 'dart:ui';
import 'package:speak_together/speech_pic.dart';

import 'tutorial8.dart';

import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class Tutorial7 extends StatefulWidget {
  Tutorial7({Key? key}) : super(key: key);

  @override
  _VideoPlayerScreenState createState() => _VideoPlayerScreenState();

}

class _VideoPlayerScreenState extends State<Tutorial7> {
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    // VideoPlayerController를 저장하기 위한 변수를 만듭니다. VideoPlayerController는
    // asset, 파일, 인터넷 등의 영상들을 제어하기 위해 다양한 생성자를 제공합니다.
    _controller = VideoPlayerController.asset(
      'assets/videos/turtle_butterfly.mp4',
    );

    // 컨트롤러를 초기화하고 추후 사용하기 위해 Future를 변수에 할당합니다.
    _initializeVideoPlayerFuture = _controller.initialize();

    // 비디오를 반복 재생하기 위해 컨트롤러를 사용합니다.
    // _controller.setLooping(true);

    super.initState();
  }

  @override
  void dispose() {
    // 자원을 반환하기 위해 VideoPlayerController를 dispose 시키세요.
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('나 비'),
        leading:  IconButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Tutorial8()));},
            color: Colors.purple,
            icon: Icon(Icons.arrow_back)),
      ),
      body: FutureBuilder(
        future: _initializeVideoPlayerFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            // 만약 VideoPlayerController 초기화가 끝나면, 제공된 데이터를 사용하여
            // VideoPlayer의 종횡비를 제한하세요.
            return Padding(
              padding: const EdgeInsets.fromLTRB(100.0, 8.0, 8.0, 8.0),
              child: AspectRatio(
                aspectRatio: _controller.value.aspectRatio,
                // 영상을 보여주기 위해 VideoPlayer 위젯을 사용합니다.
                child: VideoPlayer(_controller),
              ),
            );
          } else {
            // 만약 VideoPlayerController가 여전히 초기화 중이라면,
            // 로딩 스피너를 보여줍니다.
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
      floatingActionButton: Column(
        children: [
          Container(
            child: FloatingActionButton(
              onPressed: () {
                // 재생/일시 중지 기능을 `setState` 호출로 감쌉니다. 이렇게 함으로써 올바른 아이콘이
                // 보여집니다.
                setState(() {
                  // 영상이 재생 중이라면, 일시 중지 시킵니다.
                  if (_controller.value.isPlaying) {
                    _controller.pause();
                  } else {
                    // 만약 영상이 일시 중지 상태였다면, 재생합니다.
                    _controller.play();
                  }
                });
              },
              // 플레이어의 상태에 따라 올바른 아이콘을 보여줍니다.
              child: Icon(
                _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
                size: 50,
              ),
            ),
            margin: EdgeInsets.only(top:120, right: 80),
          ),
          Container(
            child: Text("그래도 모르겠다면\n아래 그림을 눌러봐!", style: TextStyle(color: Color(0xff692d32), fontSize: 17, fontWeight: FontWeight.w700),),
            margin: EdgeInsets.only(top:50),
          ),
          Container(
            child: IconButton(onPressed: (){
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => SpeechPic("나비", "turtle_butterfly")));},
              icon: Image.asset('assets/images/나비.png'),
              iconSize: 58,
            ),
            margin: EdgeInsets.only(top:20),
          ),
        ],
      ), // 이 마지막 콤마는 build 메서드에 자동 서식이 잘 적용될 수 있도록 도와줍니다.
    );
  }
}