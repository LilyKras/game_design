import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../data/stories.dart';

class SliderInfinity extends StatefulWidget {
  const SliderInfinity({super.key});

  @override
  State<SliderInfinity> createState() => _SliderInfinityState();
}

class _SliderInfinityState extends State<SliderInfinity> {
  int activeIndex = 0;
  final controller = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: AlignmentDirectional.center,
          children: [
            CarouselSlider.builder(
              carouselController: controller,
              itemCount: imageSliders.length,
              options: CarouselOptions(
                autoPlay: true,
                enlargeCenterPage: true,
                height: 400,
                enlargeStrategy: CenterPageEnlargeStrategy.height,
                autoPlayInterval: const Duration(seconds: 10),
                autoPlayAnimationDuration: const Duration(seconds: 5),
                onPageChanged: (index, reason) {
                  setState(() {
                    activeIndex = index;
                  });
                },
              ),
              itemBuilder: (ctx, index, rIndex) {
                return imageSliders[index];
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () => controller.previousPage(),
                  child: Container(
                    height: 62.0,
                    width: 62.0,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/icons/arrow_left.png'),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () => controller.nextPage(),
                  child: Container(
                    height: 62.0,
                    width: 62.0,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/icons/arrow_right.png'),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
        AnimatedSmoothIndicator(
          onDotClicked: (index) {
            controller.animateToPage(index);
          },
          activeIndex: activeIndex,
          count: imageSliders.length,
          effect: const SlideEffect(
            activeDotColor: Color(0xFF615959),
            dotColor: Color(0xFFD9D9D9),
          ),
        ),
      ],
    );
  }
}

final List<Widget> imageSliders = imgList
    .map(
      (item) => Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(21),
          border: Border.all(color: Colors.white),
        ),
        margin: const EdgeInsets.all(5.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(21),
          child: Stack(
            fit: StackFit.expand,
            children: [
              Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xFFB57A82), Color(0xFFF3909D)],
                    end: Alignment.topCenter,
                    begin: Alignment.bottomCenter,
                  ),
                ),
              ),
              Image.network(
                item,
                fit: BoxFit.cover,
              ),
            ],
          ),
        ),
      ),
    )
    .toList();
