import 'package:flutter/material.dart';

class SpecialAppBar extends StatelessWidget implements PreferredSizeWidget {
  const SpecialAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xFFFFDDC7),
      title: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          StatsCounter(
            image: 'assets/stats/key.png',
            text: '5',
          ),
          StatsCounter(
            image: 'assets/stats/money.png',
            text: '5',
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class StatsCounter extends StatelessWidget {
  const StatsCounter({super.key, required this.image, required this.text});
  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 140,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(21),
          gradient: const LinearGradient(
            colors: [Color(0xFFB57A82), Color(0xFFF3909D)],
            begin: Alignment.centerRight,
            end: Alignment.centerLeft,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(3.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                style: const TextStyle(color: Colors.white),
              ),
              Container(
                height: 35.0,
                width: 35.0,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/icons/plus.png'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
