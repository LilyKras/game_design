import 'package:flutter/material.dart';

class NavigationIconButton extends StatelessWidget {
  const NavigationIconButton({
    super.key,
    required this.text,
    required this.image,
    required this.tapAction,
  });
  final String text;
  final String image;
  final Function tapAction;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => tapAction(),
      child: Padding(
        padding: const EdgeInsets.only(top: 20.0, bottom: 15),
        child: SizedBox(
          width: 55,
          height: 55,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 35.0,
                width: 35.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(image),
                  ),
                ),
              ),
              Text(
                text,
                style: const TextStyle(fontSize: 10, color: Color(0xFFFFFFFF)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
