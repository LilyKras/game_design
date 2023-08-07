import 'package:diella/domain/helpers/settings.dart';
import 'package:diella/presentation/menu/controlers/settings/switch_controller.dart';
import 'package:diella/presentation/menu/controlers/settings/slider_controller.dart';
import 'package:diella/presentation/menu/screens/settings_screen/widgets/widgets/selector.dart';
import 'package:diella/presentation/menu/screens/settings_screen/widgets/widgets/setting.dart';
import 'package:diella/presentation/menu/theme/theme_extensions.dart';
import 'package:flutter/material.dart';

class SettingsCard extends StatelessWidget {
  const SettingsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(21)),
      ),
      color: Theme.of(context).extension<ThemeColors>()!.setingsBackgroundColor,
      child: Column(
        children: [
          Setting(
            text: 'Sound',
            image: 'assets/small_icons/sound',
            action: CustomSwitcher(controller: volumeController),
          ),
          Setting(
            text: 'Notifications',
            image: 'assets/small_icons/notifications',
            action: CustomSwitcher(controller: notificationsController),
          ),
          Setting(
            text: 'Language',
            image: 'assets/small_icons/language',
            action: Selector(
              select: language,
              controller: languageController,
            ),
          ),
          Setting(
            text: 'Theme',
            image: 'assets/small_icons/theme',
            action: Selector(
              select: theme,
              controller: themeController,
            ),
          ),
        ],
      ),
    );
  }
}
