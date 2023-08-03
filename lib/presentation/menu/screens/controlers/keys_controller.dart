import 'package:flutter_riverpod/flutter_riverpod.dart';

class KeysController extends StateNotifier<int> {
  KeysController() : super(0);

  void updateCounter(int sum) {
    state += sum;
  }
}

final keysController = StateNotifierProvider((ref) {
  return KeysController();
});
