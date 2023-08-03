import 'package:diella/domain/models/shop_item.dart';
import 'package:diella/domain/helpers/shop.dart';
import 'package:diella/presentation/screens/shop_screens/type_shop_screen/single_screen/widgets/small_element.dart';
import 'package:flutter/material.dart';

class SingleTypeScreen extends StatelessWidget {
  final String type;
  const SingleTypeScreen({super.key, required this.type});

  @override
  Widget build(BuildContext context) {
    List<ShopItem> elements;
    type == 'coins' ? elements = coins : elements = keys;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: ListView.builder(
        itemBuilder: (context, index) {
          if (index == 0) {
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 50),
              height: 40,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 1),
                borderRadius: BorderRadius.circular(21),
                color: const Color(0xFFF5B8B8),
              ),
              child: Center(
                child: Text(
                  type.toUpperCase(),
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            );
          } else {
            if (index == (elements.length / 2).ceil() &&
                elements.length % 2 != 0) {
              return const SingleItem();
            }

            return const Row(
              children: [
                Flexible(child: SingleItem()),
                Flexible(child: SingleItem()),
              ],
            );
          }
        },
        itemCount: (elements.length / 2).ceil() + 1,
      ),
    );
  }
}
