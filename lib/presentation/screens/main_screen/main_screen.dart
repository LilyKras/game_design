import 'package:diella/presentation/screens/main_screen/widgets/slider.dart';
import 'package:diella/presentation/screens/main_screen/widgets/special_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../screen_sample.dart';

class MainScreen extends StatelessWidget {
  static const routeName = '/home';
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenSample(
      body: Column(
        children: [
          const SliderInfinity(),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SpecialButton(
                  isLeft: false,
                  text: 'Превратности судьбы',
                  action: () => context.push('/shop'),
                ),
                SpecialButton(
                  isLeft: true,
                  text: 'Реклама +1',
                  action: () {},
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
