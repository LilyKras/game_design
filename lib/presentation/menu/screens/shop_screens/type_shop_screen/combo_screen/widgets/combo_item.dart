import 'package:diella/presentation/menu/theme/theme_extensions.dart';
import 'package:flutter/material.dart';

class ComboItem extends StatelessWidget {
  const ComboItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(21),
          gradient:
              Theme.of(context).extension<ThemeGradients>()!.shopItemGradient,
        ),
        height: 150,
      ),
    );
  }
}
