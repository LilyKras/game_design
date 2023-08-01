import 'package:diella/presentation/screens/main_screen/widgets/slider.dart';
import 'package:diella/presentation/screens/main_screen/widgets/special_button.dart';
import 'package:flutter/material.dart';

import '../screen_sample.dart';

class MainScreen extends StatelessWidget {
  static const routeName = '/home';
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScreenSample(
      body: Column(
        children: [
          SliderInfinity(),
          Padding(
            padding: EdgeInsets.only(top: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SpecialButton(isLeft: false, text: 'Превратности судьбы'),
                SpecialButton(isLeft: true, text: 'Реклама +1'),
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
