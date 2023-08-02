import 'package:flutter/material.dart';

class SingleItem extends StatelessWidget {
  const SingleItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
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
    );
  }
}
