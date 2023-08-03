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
                gradient: const LinearGradient(
                  colors: [
                    Color.fromRGBO(181, 122, 130, 0.4),
                    Color.fromRGBO(243, 144, 157, 0.8)
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              height: 150,
            ),
            Container(
              width: 100,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 1),
                borderRadius: BorderRadius.circular(21),
                color: const Color(0xFFF5B8B8),
              ),
              child: Center(child: Text(type)),
            )
          ],
        ),
      ),
    );
  }
}
