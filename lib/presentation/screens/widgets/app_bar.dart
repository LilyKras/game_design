import 'package:diella/presentation/controlers/keys_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../controlers/coins_manager.dart';

class SpecialAppBar extends StatelessWidget implements PreferredSizeWidget {
  const SpecialAppBar({super.key, required this.isShop});
  final bool isShop;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: null,
      automaticallyImplyLeading: false,
      backgroundColor: const Color(0xFFFFDDC7),
      title: Consumer(
        builder: (context, ref, child) => Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            StatsCounter(
              image: 'assets/stats/key.png',
              text: '${ref.watch(keysManager) as int}',
              isShop: isShop,
            ),
            StatsCounter(
              image: 'assets/stats/money.png',
              text: '${ref.watch(coinsManager) as int}',
              isShop: isShop,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class StatsCounter extends StatelessWidget {
  const StatsCounter({
    super.key,
    required this.image,
    required this.text,
    required this.isShop,
  });
  final String image;
  final String text;
  final bool isShop;

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
              SizedBox(
                height: 30.0,
                width: 55,
                child: FittedBox(
                  child: Text(
                    text,
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              ),
              if (!isShop)
                GestureDetector(
                  onTap: () {
                    context.push('/shop');
                  },
                  child: Container(
                    height: 35.0,
                    width: 35.0,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/icons/plus.png'),
                      ),
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
