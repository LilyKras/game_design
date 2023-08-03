import 'package:diella/presentation/menu/screens/widgets/screen_sample.dart';
import 'package:diella/presentation/menu/screens/settings_screen/widgets/auth.dart';
import 'package:diella/presentation/menu/screens/settings_screen/widgets/info.dart';
import 'package:diella/presentation/menu/screens/settings_screen/widgets/setting.dart';
import 'package:diella/presentation/menu/screens/settings_screen/widgets/social_network.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  static const routeName = '/settings';
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScreenSample(
      body: Padding(
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
      isSettings: true,
      isShop: false,
    );
  }
}
