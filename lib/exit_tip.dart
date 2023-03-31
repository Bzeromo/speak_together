import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';


class ExitTips extends StatelessWidget {
  const ExitTips({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final player = AudioPlayer();
    player.play(AssetSource('sounds/turtle_out.wav'));
    return SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xffffffff)
              ),
            )
        );
  }
}

class ExitTips2 extends StatelessWidget {
  const ExitTips2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Container(
          decoration: BoxDecoration(
              color: Color(0xffffffff)
          ),
        )
    );
  }
}