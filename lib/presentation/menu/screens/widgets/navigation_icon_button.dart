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
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).size.height / 80,
          bottom: MediaQuery.of(context).size.height / 90 + 1,
          left: 10,
          right: 10,
        ),
        child: SizedBox(
          width: MediaQuery.of(context).size.height / 15,
          height: MediaQuery.of(context).size.height / 15,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 30,
                width: MediaQuery.of(context).size.height / 30,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(image),
                  ),
                ),
              ),
              Text(
                text,
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.height / 78,
                  color: const Color(0xFFFFFFFF),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
