import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:speak_together/speech_pic.dart';
import 'package:video_player/video_player.dart';

// ignore: must_be_immutable
class SpeechVideo extends StatefulWidget {

  // SpeechVideo({Key? key}) : super(key: key);
  late String videoName;
  late String speech;
  late String pic;

  SpeechVideo(this.videoName, this.speech, this.pic, {Key? key}) : super(key: key);

  @override
  _VideoPlayerScreenState createState() => _VideoPlayerScreenState(videoName, speech, pic);

}

class _VideoPlayerScreenState extends State<SpeechVideo> {
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;
  late String videoName;
  late String speech;
  late String pic;

  _VideoPlayerScreenState(this.videoName, this.speech, this.pic);
  @override
  void initState() {
    // VideoPlayerController를 저장하기 위한 변수를 만듭니다. VideoPlayerController는
    // asset, 파일, 인터넷 등의 영상들을 제어하기 위해 다양한 생성자를 제공합니다.
    _controller = VideoPlayerController.asset(
      'assets/videos/'+ videoName + '.mp4',
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
        title: Text(speech),
        leading:  IconButton(
            onPressed: () {
              Navigator.pop(context);},
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
              padding: const EdgeInsets.fromLTRB(120.0, 8.0, 8.0, 8.0),
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
      floatingActionButton: Row(
        children: [
          Column(
            children: [
              Container(
                child: Text('함께 말하기', style: TextStyle(color: Color(0xff692d32), fontSize: 30, fontWeight: FontWeight.w900),),
                margin: EdgeInsets.only(top:120, right: 20, left: 350),
              ),
              Container(
                child: FloatingActionButton(
                  onPressed: () {
                    // 재생/일시 중지 기능을 `setState` 호출로 감쌉니다. 이렇게 함으로써 올바른 아이콘이 보여집니다.
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
                margin: EdgeInsets.only(top:30, right: 20, left: 350),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                child: Text(speech, style: TextStyle(color: Color(0xff697d32), fontSize: 20, fontWeight: FontWeight.w800),),
                margin: EdgeInsets.only(top:150, left: 30),
              ),
              Container(
                child: Text('그림을 눌러봐!', style: TextStyle(color: Color(0xff692d32), fontSize: 18, fontWeight: FontWeight.w700),),
                margin: EdgeInsets.only(top:30, left: 30),
              ),
              Container(
                child: IconButton(onPressed: (){
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => SpeechPic(speech, videoName)));},
                  icon: Image.asset('assets/images/' + pic + '.png'),
                  iconSize: 100,
                ),
                margin: EdgeInsets.only(top:10, left: 30),
              ),
            ],
          ),
        ],
      ), // 이 마지막 콤마는 build 메서드에 자동 서식이 잘 적용될 수 있도록 도와줍니다.
    );
  }
}