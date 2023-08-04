import 'package:diella/presentation/menu/controlers/settings/switch_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Setting extends StatelessWidget {
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
  Widget build(BuildContext context) {
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
                  image: AssetImage(image),
                ),
              ),
            ),
          ),
          Flexible(
            fit: FlexFit.tight,
            child: Text(text),
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
