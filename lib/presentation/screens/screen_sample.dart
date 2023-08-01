import 'package:diella/presentation/screens/widgets/app_bar.dart';
import 'package:diella/presentation/screens/widgets/navigation_icon_button.dart';
import 'package:flutter/material.dart';

import '../../navigation/router_delegate.dart';

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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: !isShop
              ? [
                  NavigationIconButton(
                    text: 'EXIT',
                    image: 'assets/icons/exit.png',
                    tapAction: () => Navigator.of(context).pop(),
                  ),
                  NavigationIconButton(
                    text: 'HOME',
                    image: 'assets/icons/home.png',
                    tapAction: () => Navigator.of(context).pop(),
                  ),
                  NavigationIconButton(
                    text: 'SETTINGS',
                    image: 'assets/icons/settings.png',
                    tapAction: () => routerDelegate.showSettings(),
                  ),
                ]
              : [
                  NavigationIconButton(
                    text: 'BACK',
                    image: 'assets/icons/setttings.png',
                    tapAction: () => Navigator.of(context).pop(),
                  ),
                  NavigationIconButton(
                    text: 'HOME',
                    image: 'assets/icons/home.png',
                    tapAction: () => Navigator.of(context).pop(),
                  ),
                  NavigationIconButton(
                    text: 'STORE',
                    image: 'assets/icons/settings.png',
                    tapAction: () => routerDelegate.showSettings(),
                  ),
                ],
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
          : const SpecialAppBar(),
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
