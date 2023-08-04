import 'package:diella/presentation/games/game.dart';
import 'package:diella/presentation/menu/controlers/coins_controller.dart';
import 'package:diella/presentation/menu/screens/main_screen/widgets/slider.dart';
import 'package:diella/presentation/menu/screens/main_screen/widgets/special_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../games/first/first_game.dart';
import '../widgets/screen_sample.dart';

class MainScreen extends ConsumerWidget {
  static const routeName = '/home';
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {
    return ScreenSample(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5.0),
        child: Column(
          children: [
            const SliderInfinity(),
            Flexible(
              fit: FlexFit.tight,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SpecialButton(
                    isLeft: false,
                    text: 'Превратности судьбы',
                    action: () {
                      startGame(FirstGame());
                    },
                  ),
                  SpecialButton(
                    isLeft: true,
                    text: 'Реклама +1',
                    action: () {
                      ref.read(coinsController.notifier).updateCounter(1);
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      isSettings: false,
      isShop: false,
    );
  }
}
