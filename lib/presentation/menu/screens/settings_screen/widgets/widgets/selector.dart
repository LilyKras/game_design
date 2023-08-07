import 'package:diella/presentation/menu/controlers/settings/slider_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Selector extends ConsumerWidget {
  const Selector({
    super.key,
    required this.select,
    required this.controller,
  });

  final List<List> select;
  final StateNotifierProvider<SettingsSliderController, Object?> controller;

  @override
  Widget build(BuildContext context, ref) {
    return Row(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height / 17,
          child: FittedBox(
            fit: BoxFit.fill,
            child: IconButton(
              icon: const Icon(
                Icons.arrow_back_ios,
              ),
              onPressed: () {
                ref.read(controller.notifier).previousState();
              },
            ),
          ),
        ),
        Text(
          select[ref.watch(controller) as int][1],
          style: Theme.of(context).textTheme.bodySmall,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 17,
          child: FittedBox(
            fit: BoxFit.fill,
            child: IconButton(
              icon: const Icon(
                Icons.arrow_forward_ios,
              ),
              onPressed: () {
                ref.read(controller.notifier).nextState();
              },
            ),
          ),
        ),
      ],
    );
  }
}
