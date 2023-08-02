import 'package:diella/presentation/screens/screen_sample.dart';
import 'package:diella/presentation/screens/shop_screens/type_shop_screen/combo_screen/combo_shop_screen.dart';
import 'package:diella/presentation/screens/shop_screens/type_shop_screen/single_screen/single_type_shop_screen.dart';
import 'package:flutter/material.dart';

class TypeShopScreen extends StatelessWidget {
  const TypeShopScreen({super.key, required this.type});
  final String type;

  @override
  Widget build(BuildContext context) {
    return ScreenSample(
      body:
          type == 'combo' ? const ComboScreen() : SingleTypeScreen(type: type),
      isSettings: false,
      isShop: true,
    );
  }
}
