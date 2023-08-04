import 'package:flame/game.dart';
import 'package:flame_audio/flame_audio.dart';
import 'package:flutter/material.dart';

import 'flutter_layer.dart';

void startGame(FlameGame game) {
  FlameAudio.bgm.stop();
  runApp(
    MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFFD58A94)),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(title: const FlutterLayer()),
        body: Stack(
          children: [
            GameWidget(
              game: game,
            ),
          ],
        ),
      ),
    ),
  );
}
