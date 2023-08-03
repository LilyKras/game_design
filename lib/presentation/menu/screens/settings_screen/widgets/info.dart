import 'dart:ui';

import 'package:diella/domain/helpers/url.dart';
import 'package:diella/presentation/menu/screens/settings_screen/widgets/widgets/setting.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({super.key});

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
            text: 'Help',
            image: 'assets/small_icons/help.png',
            action: LinkedArror(
              url: mail,
            ),
          ),
          Setting(
            text: 'Conf',
            image: 'assets/small_icons/conf.png',
            action: LinkedArror(
              url: conf,
            ),
          ),
          Setting(
            text: 'Rules',
            image: 'assets/small_icons/rules.png',
            action: LinkedArror(
              url: rules,
            ),
          ),
        ],
      ),
    );
  }
}

class LinkedArror extends StatelessWidget {
  const LinkedArror({super.key, required this.url});
  final Uri url;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 17,
      child: FittedBox(
        fit: BoxFit.fill,
        child: IconButton(
          onPressed: () async {
            if (!await launchUrl(url)) {
              // ignore: use_build_context_synchronously
              showDialog(
                context: context,
                builder: (context) {
                  return BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                    child: const Dialog(
                      child: Text('Our mail adress is $mailAdress'),
                    ),
                  );
                },
                barrierColor: null,
              );
            }
          },
          icon: const Icon(Icons.arrow_forward_ios),
        ),
      ),
    );
  }
}
