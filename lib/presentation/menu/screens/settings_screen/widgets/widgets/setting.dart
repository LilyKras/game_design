import 'package:diella/presentation/menu/controlers/settings/slider_controller.dart';
import 'package:diella/presentation/menu/controlers/settings/switch_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Setting extends ConsumerWidget {
  const Setting({
    super.key,
    required this.text,
    required this.image,
    required this.action,
  });
  final String text;
  final String image;
  final Widget action;

  @override
  Widget build(BuildContext context, ref) {
    String isDarkTheme =
        (ref.watch(themeController) as int == 0) ? '_dark' : '';
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
            child: Container(
              height: 21.0,
              width: 21.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('$image$isDarkTheme.png'),
                ),
              ),
            ),
          ),
          Flexible(
            fit: FlexFit.tight,
            child: Text(
              text,
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ),
          action
        ],
      ),
    );
  }
}

class CustomSwitcher extends ConsumerWidget {
  const CustomSwitcher({super.key, required this.controller});

  final StateNotifierProvider<SettingsSwitcherController, Object?> controller;

  @override
  Widget build(BuildContext context, ref) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 17,
      child: FittedBox(
        fit: BoxFit.fill,
        child: Switch(
          value: ref.watch(controller) as bool,
          onChanged: (_) async {
            await ref.read(controller.notifier).toggleState();
          },
        ),
      ),
    );
  }
}
