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
                aspectRatio: 0.9,
                enlargeCenterPage: true,
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
        margin: const EdgeInsets.all(5.0),
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(30.0)),
          child: Stack(
            children: <Widget>[
              Image.network(item, fit: BoxFit.cover, width: 1000.0),
              Positioned(
                bottom: 0.0,
                left: 0.0,
                right: 0.0,
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(200, 0, 0, 0),
                        Color.fromARGB(0, 0, 0, 0)
                      ],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                    ),
                  ),
                  padding: const EdgeInsets.symmetric(
                    vertical: 10.0,
                    horizontal: 20.0,
                  ),
                  child: Text(
                    'No. ${imgList.indexOf(item)} image',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    )
    .toList();
