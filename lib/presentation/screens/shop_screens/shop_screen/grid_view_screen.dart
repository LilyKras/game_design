import 'package:diella/domain/helpers/shop.dart';
import 'package:diella/presentation/screens/screen_sample.dart';
import 'package:diella/presentation/screens/shop_screens/shop_screen/widgets/card_type.dart';
import 'package:flutter/material.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenSample(
      body: ListView.builder(
        itemCount: shopTypes.length,
        itemBuilder: (context, index) => CardType(type: shopTypes[index]),
      ),
      isShop: true,
      isSettings: false,
    );
  }
}
