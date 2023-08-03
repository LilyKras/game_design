import 'package:flutter_riverpod/flutter_riverpod.dart';

class KeysManager extends StateNotifier<int> {
  KeysManager() : super(0);

  void updateCounter(int sum) {
    state += 100;
  }
}

final keysManager = StateNotifierProvider((ref) {
  return KeysManager();
});
