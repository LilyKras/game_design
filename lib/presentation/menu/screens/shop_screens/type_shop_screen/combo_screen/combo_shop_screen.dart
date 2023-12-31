import 'package:diella/domain/helpers/shop.dart';
import 'package:diella/presentation/menu/screens/shop_screens/type_shop_screen/combo_screen/widgets/combo_item.dart';
import 'package:diella/presentation/menu/theme/theme_extensions.dart';
import 'package:flutter/material.dart';

class ComboScreen extends StatelessWidget {
  const ComboScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50.0),
            child: Container(
              height: 40,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 1),
                borderRadius: BorderRadius.circular(21),
                color:
                    Theme.of(context).extension<ThemeColors>()!.shopNameColor,
              ),
              child: Center(
                child: Text(
                  'Combo'.toUpperCase(),
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ),
        ...combo.map((e) => const ComboItem())
      ],
    );
  }
}
