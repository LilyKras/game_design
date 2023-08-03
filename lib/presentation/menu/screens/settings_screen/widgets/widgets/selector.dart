import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Selector extends ConsumerWidget {
  const Selector({
    super.key,
    required this.select,
    required this.isThemeSelector,
  });

  final Map<dynamic, String> select;
  final bool isThemeSelector;

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
              onPressed: () {},
            ),
          ),
        ),
        const Text('a'),
        SizedBox(
          height: MediaQuery.of(context).size.height / 17,
          child: FittedBox(
            fit: BoxFit.fill,
            child: IconButton(
              icon: const Icon(
                Icons.arrow_forward_ios,
              ),
              onPressed: () {},
            ),
          ),
        ),
      ],
    );
  }
}
