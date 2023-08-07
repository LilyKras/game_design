import 'package:diella/presentation/menu/theme/theme_extensions.dart';
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
    return InkWell(
      onTap: () => {action()},
      child: Container(
        width: MediaQuery.of(context).size.width * 0.4,
        height: MediaQuery.of(context).size.height / 10,
        decoration: BoxDecoration(
          borderRadius: isLeft
              ? BorderRadius.only(
                  topLeft:
                      Radius.circular(MediaQuery.of(context).size.height / 30),
                  topRight: const Radius.circular(0),
                  bottomLeft:
                      Radius.circular(MediaQuery.of(context).size.height / 30),
                  bottomRight: const Radius.circular(0),
                )
              : BorderRadius.only(
                  topLeft: const Radius.circular(0),
                  topRight:
                      Radius.circular(MediaQuery.of(context).size.height / 30),
                  bottomLeft: const Radius.circular(0),
                  bottomRight:
                      Radius.circular(MediaQuery.of(context).size.height / 30),
                ),
          gradient:
              Theme.of(context).extension<ThemeGradients>()!.buttonGradient,
        ),
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Center(
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: MediaQuery.of(context).size.height / 50,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
