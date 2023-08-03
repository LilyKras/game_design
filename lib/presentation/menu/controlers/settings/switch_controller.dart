import 'package:flame_audio/flame_audio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class SettingsSwitcherController extends StateNotifier<bool> {
  SettingsSwitcherController() : super(false);

  void toggleState() {
    state = !state;
  }
}

class VolumeController extends SettingsSwitcherController {
  VolumeController() : super();

  @override
  void toggleState() {
    state ? FlameAudio.bgm.stop() : FlameAudio.bgm.play('game/music/sad.mp3');
    state = !state;
  }
}

class NotificationsController extends SettingsSwitcherController {
  NotificationsController() : super();

  @override
  void toggleState() {
    state = !state;
  }
}

final volumeController = StateNotifierProvider((ref) {
  return VolumeController();
});

final notificationsController = StateNotifierProvider((ref) {
  return NotificationsController();
});
