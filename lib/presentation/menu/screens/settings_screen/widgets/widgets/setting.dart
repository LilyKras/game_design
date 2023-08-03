import 'package:flutter/material.dart';

class Setting extends StatelessWidget {
  const Setting({
    super.key,
    required this.text,
    required this.image,
    required this.action,
  });
  final String text;
  final String image;
  final Widget action;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
            child: Container(
              height: 21.0,
              width: 21.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(image),
                ),
              ),
            ),
          ),
          Flexible(
            fit: FlexFit.tight,
            child: Text(text),
          ),
          action
        ],
      ),
    );
  }
}

class CustomSwitcher extends StatefulWidget {
  const CustomSwitcher({super.key});

  @override
  State<CustomSwitcher> createState() => _CustomSwitcherState();
}

class _CustomSwitcherState extends State<CustomSwitcher> {
  bool val = true;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 17,
      child: FittedBox(
        fit: BoxFit.fill,
        child: Switch(
          value: val,
          onChanged: (_) {
            setState(() {
              val = !val;
            });
          },
        ),
      ),
    );
  }
}
