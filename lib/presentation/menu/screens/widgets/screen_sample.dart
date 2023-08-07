import 'package:diella/domain/helpers/url.dart';
import 'package:diella/presentation/menu/screens/widgets/app_bar.dart';
import 'package:diella/presentation/menu/screens/widgets/dialog.dart';
import 'package:diella/presentation/menu/screens/widgets/navigation_icon_button.dart';
import 'package:diella/presentation/menu/theme/theme_extensions.dart';
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
        color:
            Theme.of(context).extension<ThemeColors>()!.bottomBackGroundColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 3),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: !isShop
                ? [
                    NavigationIconButton(
                      text: 'EXIT',
                      image: 'assets/icons/exit.png',
                      tapAction: () => showDialog(
                        context: context,
                        barrierColor: null,
                        builder: (context) => const DialogWidget(
                          text: 'Вы уверены, что хотите выйти из аккаунта?',
                        ),
                      ),
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
              leading: null,
              automaticallyImplyLeading: false,
              centerTitle: true,
              title: Text(
                'Settings',
                style: Theme.of(context).textTheme.titleMedium,
              ),
            )
          : SpecialAppBar(
              isShop: isShop,
            ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            gradient: Theme.of(context)
                .extension<ThemeGradients>()!
                .backGroundGradient,
          ),
          child: Center(child: body),
        ),
      ),
    );
  }
}
