import 'package:diella/presentation/menu/theme/theme_extensions.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CardType extends StatelessWidget {
  const CardType({super.key, required this.type});

  final String type;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push('/shop/$type');
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(21),
                gradient: Theme.of(context)
                    .extension<ThemeGradients>()!
                    .shopItemGradient,
              ),
              height: 150,
            ),
            Container(
              width: 100,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 1),
                borderRadius: BorderRadius.circular(21),
                color:
                    Theme.of(context).extension<ThemeColors>()!.shopNameColor,
              ),
              child: Center(
                child: Text(
                  type,
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
