import 'package:diella/presentation/menu/screens/controlers/coins_manager.dart';
import 'package:diella/presentation/menu/screens/main_screen/widgets/slider.dart';
import 'package:diella/presentation/menu/screens/main_screen/widgets/special_button.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../games/first/first_game.dart';
import '../screen_sample.dart';

class MainScreen extends ConsumerWidget {
  static const routeName = '/home';
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {
    return ScreenSample(
      body: Column(
        children: [
          const SliderInfinity(),
          Padding(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height / 35),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SpecialButton(
                  isLeft: false,
                  text: 'Превратности судьбы',
                  action: () => runApp(GameWidget(
                    game: FirstGame(),
                  )),
                ),
                SpecialButton(
                  isLeft: true,
                  text: 'Реклама +1',
                  action: () {
                    ref.read(coinsManager.notifier).updateCounter(1);
                  },
                ),
              ],
            ),
          )
        ],
      ),
      isSettings: false,
      isShop: false,
    );
  }
}
