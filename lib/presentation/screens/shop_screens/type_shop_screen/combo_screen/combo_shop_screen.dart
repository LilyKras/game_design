import 'package:diella/domain/helpers/shop.dart';
import 'package:diella/presentation/screens/shop_screens/type_shop_screen/combo_screen/widgets/combo_item.dart';
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
                color: const Color(0xFFF5B8B8),
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
