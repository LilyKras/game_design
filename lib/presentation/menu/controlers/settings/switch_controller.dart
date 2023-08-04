import 'package:diella/main.dart';
import 'package:flame_audio/flame_audio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class SettingsSwitcherController extends StateNotifier<bool> {
  SettingsSwitcherController(super.state);

  Future<void> toggleState() async {
    state = !state;
  }
}

class VolumeController extends SettingsSwitcherController {
  VolumeController(super.state);

  @override
  Future<void> toggleState() async {
    state ? FlameAudio.bgm.stop() : FlameAudio.bgm.play('game/music/sad.mp3');
    state = !state;
    await prefs!.setBool('volume', state);
  }
}

class NotificationsController extends SettingsSwitcherController {
  NotificationsController(super.state);

  @override
  Future<void> toggleState() async {
    state = !state;
    await prefs!.setBool('notifications', state);
  }
}

final volumeController = StateNotifierProvider((ref) {
  return VolumeController(prefs!.getBool('volume') ?? false);
});

final notificationsController = StateNotifierProvider((ref) {
  return NotificationsController(prefs!.getBool('notifications') ?? false);
});
