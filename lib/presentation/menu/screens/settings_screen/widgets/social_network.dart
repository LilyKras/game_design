import 'package:diella/domain/helpers/url.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialNetworkCard extends StatelessWidget {
  const SocialNetworkCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(MediaQuery.of(context).size.height / 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SocialNetworkItem(
            url: vk,
            imageAsset: 'assets/social_network/vk.png',
          ),
          SocialNetworkItem(
            url: tg,
            imageAsset: 'assets/social_network/tg.png',
          ),
        ],
      ),
    );
  }
}

class SocialNetworkItem extends StatelessWidget {
  const SocialNetworkItem({
    super.key,
    required this.url,
    required this.imageAsset,
  });
  final Uri url;
  final String imageAsset;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        if (!await launchUrl(url)) {
          throw Exception('Could not launch $url');
        }
      },
      child: Container(
        width: MediaQuery.of(context).size.height / 17,
        height: MediaQuery.of(context).size.height / 17,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Colors.white,
        ),
        child: ClipOval(
          child: Image.asset(
            imageAsset,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
