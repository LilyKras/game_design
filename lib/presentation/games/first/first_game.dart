import 'dart:ui';

import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:flame/game.dart';
import 'package:flame_audio/flame_audio.dart';

class FirstGame extends FlameGame with TapDetector {
  SpriteComponent jackComponent = SpriteComponent();
  SpriteComponent joComponent = SpriteComponent();
  @override
  Future<void> onLoad() async {
    await super.onLoad();
    add(
      SpriteComponent(
        sprite: await loadSprite('game/backgrounds/home.png'),
        size: Vector2(size.x, size.y),
      ),
    );
    Vector2 charactersSize = Vector2(size.x / 3, size.y * 0.8);
    jackComponent
      ..size = charactersSize
      ..sprite = await loadSprite('game/characters/jack.png')
      ..position = Vector2(0, size.y * 0.2);
    joComponent
      ..size = charactersSize
      ..sprite = await loadSprite('game/characters/jo.png')
      ..position = Vector2(size.x * 2 / 3, size.y * 0.2);
    add(
      jackComponent,
    );
    add(
      joComponent,
    );
    FlameAudio.bgm.initialize();
    FlameAudio.bgm.play('game/music/happy.mp3', volume: 0.25);
  }

  @override
  void update(double dt) {
    if (joComponent.x > 0) joComponent.x -= 3;
    super.update(dt);
  }

  @override
  void render(Canvas canvas) {
    super.render(canvas);

    final rect = Rect.fromLTWH(0, size.y * 0.75, size.x, size.y / 4);
    canvas.drawRect(
      rect,
      Paint()..color = const Color.fromARGB(160, 159, 159, 159),
    );
  }
}
