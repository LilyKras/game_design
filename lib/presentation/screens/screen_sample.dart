import 'package:diella/data/url.dart';
import 'package:diella/presentation/screens/widgets/app_bar.dart';
import 'package:diella/presentation/screens/widgets/navigation_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';

class ScreenSample extends StatelessWidget {
  static const routeName = '/home';
  const ScreenSample({
    super.key,
    required this.body,
    required this.isShop,
    required this.isSettings,
  });
  final Widget body;
  final bool isShop, isSettings;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: const Color(0xFFB57A82),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: !isShop
                ? [
                    NavigationIconButton(
                      text: 'EXIT',
                      image: 'assets/icons/exit.png',
                      tapAction: () => context.go('/'),
                    ),
                    NavigationIconButton(
                      text: 'HOME',
                      image: 'assets/icons/home.png',
                      tapAction: () => context.go('/'),
                    ),
                    NavigationIconButton(
                      text: 'SETTINGS',
                      image: 'assets/icons/settings.png',
                      tapAction: () => context.go('/settings'),
                    ),
                  ]
                : [
                    NavigationIconButton(
                      text: 'BACK',
                      image: 'assets/icons/arrow_left.png',
                      tapAction: () => context.pop(),
                    ),
                    NavigationIconButton(
                      text: 'STORE',
                      image: 'assets/icons/shop.png',
                      tapAction: () async {
                        if (!await launchUrl(shop)) {
                          throw Exception('Could not launch $shop');
                        }
                      },
                    ),
                  ],
          ),
        ),
      ),
      appBar: isSettings
          ? AppBar(
              title: const Text(
                'Settings',
                style: TextStyle(fontSize: 24),
              ),
              backgroundColor: const Color(0xFFFFDDC7),
            )
          : SpecialAppBar(
              isShop: isShop,
            ),
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFFFFDDC7), Color(0xFFD58A94)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Center(child: body),
        ),
      ),
    );
  }
}
