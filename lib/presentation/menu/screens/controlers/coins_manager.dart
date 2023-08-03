import 'package:flutter_riverpod/flutter_riverpod.dart';

class CoinsManager extends StateNotifier<int> {
  CoinsManager() : super(0);

  void updateCounter(int sum) {
    state += sum;
  }
}

final coinsManager = StateNotifierProvider((ref) {
  return CoinsManager();
});
