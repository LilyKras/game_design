import 'dart:ui';

import 'package:flutter/material.dart';

class DialogWidget extends StatelessWidget {
  const DialogWidget({
    super.key,
    required this.text,
    this.imageAsset,
    this.action1,
    this.action2,
  });

  final String text;
  final String? imageAsset;
  final Widget? action1;
  final Widget? action2;

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(
        sigmaX: 5,
        sigmaY: 5,
      ),
      child: Dialog(
        child: Container(
          height: 423,
          width: 281,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(28),
            border: Border.all(color: Colors.white),
            color: Theme.of(context).dialogTheme.backgroundColor,
          ),
          child: Center(
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: Theme.of(context).dialogTheme.contentTextStyle,
            ),
          ),
        ),
      ),
    );
  }
}
