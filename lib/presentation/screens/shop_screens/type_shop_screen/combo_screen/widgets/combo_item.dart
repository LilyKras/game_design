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
    );
  }
}
