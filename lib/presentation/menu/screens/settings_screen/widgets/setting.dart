import 'package:diella/domain/helpers/settings.dart';
import 'package:diella/presentation/menu/screens/controlers/settings/switch_controller.dart';
import 'package:diella/presentation/menu/screens/settings_screen/widgets/widgets/selector.dart';
import 'package:diella/presentation/menu/screens/settings_screen/widgets/widgets/setting.dart';
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
          Setting(
            text: 'Sound',
            image: 'assets/small_icons/sound.png',
            action: CustomSwitcher(controller: volumeController),
          ),
          Setting(
            text: 'Notifications',
            image: 'assets/small_icons/notifications.png',
            action: CustomSwitcher(controller: notificationsController),
          ),
          const Setting(
            text: 'Language',
            image: 'assets/small_icons/language.png',
            action: Selector(
              select: language,
              isThemeSelector: false,
            ),
          ),
          const Setting(
            text: 'Theme',
            image: 'assets/small_icons/theme.png',
            action: Selector(
              select: theme,
              isThemeSelector: true,
            ),
          ),
        ],
      ),
    );
  }
}
