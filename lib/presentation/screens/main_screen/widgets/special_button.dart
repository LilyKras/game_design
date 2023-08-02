import 'package:flutter/material.dart';

class SpecialButton extends StatelessWidget {
  const SpecialButton({
    super.key,
    required this.isLeft,
    required this.text,
    required this.action,
  });
  final bool isLeft;
  final String text;
  final Function action;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {action()},
      child: Container(
        width: 160,
        height: 112,
        decoration: BoxDecoration(
          borderRadius: isLeft
              ? const BorderRadius.only(
                  topLeft: Radius.circular(32),
                  topRight: Radius.circular(0),
                  bottomLeft: Radius.circular(32),
                  bottomRight: Radius.circular(0),
                )
              : const BorderRadius.only(
                  topLeft: Radius.circular(0),
                  topRight: Radius.circular(32),
                  bottomLeft: Radius.circular(0),
                  bottomRight: Radius.circular(32),
                ),
          gradient: const LinearGradient(
            colors: [Color(0xFFB57A82), Color(0xFFF3909D)],
            end: Alignment.topCenter,
            begin: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
        ),
      ),
    );
  }
}
