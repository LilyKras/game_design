import 'package:diella/presentation/screens/settings_screen/widgets/auth.dart';
import 'package:diella/presentation/screens/settings_screen/widgets/info.dart';
import 'package:diella/presentation/screens/settings_screen/widgets/setting.dart';
import 'package:diella/presentation/screens/settings_screen/widgets/social_network.dart';
import 'package:flutter/material.dart';

import '../widgets/navigation_icon_button.dart';

class SettingsScreen extends StatelessWidget {
  static const routeName = '/settings';
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Settings',
          style: TextStyle(fontSize: 24),
        ),
        backgroundColor: const Color(0xFFFFDDC7),
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
          child: const Center(
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  SettingsCard(),
                  AuthCard(),
                  SocialNetworkCard(),
                  InfoCard(),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        color: const Color(0xFFB57A82),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            NavigationIconButton(text: 'EXIT', image: 'assets/icons/exit.png'),
            NavigationIconButton(text: 'HOME', image: 'assets/icons/home.png'),
            NavigationIconButton(
              text: 'SETTINGS',
              image: 'assets/icons/settings.png',
            ),
          ],
        ),
      ),
    );
  }
}
