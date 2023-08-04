import 'package:diella/main.dart';
import 'package:flame_audio/flame_audio.dart';
import 'package:flutter/material.dart';

class FlutterLayer extends StatelessWidget {
  const FlutterLayer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.blue),
            ),
            onPressed: () {
              FlameAudio.bgm.stop();
              main();
            },
            icon: const Icon(
              Icons.door_back_door_outlined,
              color: Colors.white,
              size: 40,
            ),
          ),
          IconButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.blue),
            ),
            onPressed: () {
              FlameAudio.bgm.stop();
              main();
            },
            icon: const Icon(
              Icons.grading_rounded,
              color: Colors.white,
              size: 40,
            ),
          )
        ],
      ),
    );
  }
}
