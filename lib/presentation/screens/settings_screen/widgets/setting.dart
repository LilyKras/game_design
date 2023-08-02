import 'package:diella/data/url.dart';
import 'package:diella/presentation/screens/settings_screen/widgets/info.dart';
import 'package:diella/presentation/screens/settings_screen/widgets/widgets/setting.dart';
import 'package:flutter/material.dart';

class SettingsCard extends StatelessWidget {
  const SettingsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(21)),
      ),
      color: const Color.fromARGB(255, 224, 177, 169),
      child: Column(
        children: [
          const Setting(
            text: 'Sound',
            image: 'assets/small_icons/sound.png',
            action: CustomSwitcher(),
          ),
          const Setting(
            text: 'Notifications',
            image: 'assets/small_icons/notifications.png',
            action: CustomSwitcher(),
          ),
          Setting(
            text: 'Language',
            image: 'assets/small_icons/language.png',
            action: LinkedArror(
              url: shop,
            ),
          ),
          Setting(
            text: 'Theme',
            image: 'assets/small_icons/theme.png',
            action: LinkedArror(
              url: shop,
            ),
          ),
        ],
      ),
    );
  }
}
