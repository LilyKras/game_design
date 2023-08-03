import 'package:flutter_riverpod/flutter_riverpod.dart';

class CoinsController extends StateNotifier<int> {
  CoinsController() : super(0);

  void updateCounter(int sum) {
    state += sum;
  }
}

final coinsController = StateNotifierProvider((ref) {
  return CoinsController();
});
