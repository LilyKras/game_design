import 'package:diella/presentation/screens/settings_screen/widgets/widgets/setting.dart';
import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(21))),
      color: Color.fromARGB(255, 224, 177, 169),
      child: Column(
        children: [
          Setting(
              text: 'Help',
              image: 'assets/small_icons/help.png',
              action: LinkedArror(
                url: '',
              )),
          Setting(
              text: 'Conf',
              image: 'assets/small_icons/conf.png',
              action: LinkedArror(
                url: '',
              )),
          Setting(
              text: 'Rules',
              image: 'assets/small_icons/rules.png',
              action: LinkedArror(
                url: '',
              )),
        ],
      ),
    );
  }
}

class LinkedArror extends StatelessWidget {
  const LinkedArror({super.key, required this.url});
  final String url;

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {}, icon: const Icon(Icons.arrow_forward_ios));
  }
}
