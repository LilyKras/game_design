import 'dart:math';
import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:diella/domain/models/story_item.dart';
import 'package:diella/presentation/menu/theme/theme_extensions.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../../domain/helpers/stories.dart';

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
        // Stack(
        //   alignment: AlignmentDirectional.center,
        //   children: [
        CarouselSlider.builder(
          carouselController: controller,
          itemCount: stories.length,
          options: CarouselOptions(
            enlargeFactor: 0.4,
            autoPlay: true,
            enlargeCenterPage: true,
            height: min(
              MediaQuery.of(context).size.height / 1.6,
              MediaQuery.of(context).size.width * 0.75 * 1.55,
            ),
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
            return imageSliders(context)[index];
          },
        ),
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //   children: [
        //     GestureDetector(
        //       onTap: () => controller.previousPage(),
        //       child: Container(
        //         height: 62.0,
        //         width: 62.0,
        //         decoration: const BoxDecoration(
        //           image: DecorationImage(
        //             image: AssetImage('assets/icons/arrow_left.png'),
        //           ),
        //         ),
        //       ),
        //     ),
        //     GestureDetector(
        //       onTap: () => controller.nextPage(),
        //       child: Container(
        //         height: 62.0,
        //         width: 62.0,
        //         decoration: const BoxDecoration(
        //           image: DecorationImage(
        //             image: AssetImage('assets/icons/arrow_right.png'),
        //           ),
        //         ),
        //       ),
        //     ),
        //   ],
        // )
        // ],
        // ),
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: AnimatedSmoothIndicator(
            onDotClicked: (index) {
              controller.animateToPage(index);
            },
            activeIndex: activeIndex,
            count: stories.length,
            effect: const SlideEffect(
              dotHeight: 9,
              dotWidth: 9,
              activeDotColor: Color(0xFF615959),
              dotColor: Color(0xFFD9D9D9),
            ),
          ),
        ),
      ],
    );
  }
}

List<Widget> imageSliders(BuildContext context) {
  return stories
      .map(
        (item) => GestureDetector(
          onTap: () {
            showDialog(
              barrierColor: null,
              context: context,
              builder: (context) => BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 5,
                  sigmaY: 5,
                ),
                child: Dialog(
                  child: StoryDialog(item: item),
                ),
              ),
            );
          },
          child: Container(
            width: MediaQuery.of(context).size.width * 0.75,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              border: Border.all(
                color: Theme.of(context).extension<ThemeColors>()!.borderColor,
                width: 3,
              ),
            ),
            margin: const EdgeInsets.only(bottom: 5),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(21),
              child: Stack(
                fit: StackFit.expand,
                alignment: Alignment.bottomLeft,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      gradient: Theme.of(context)
                          .extension<ThemeGradients>()!
                          .storyPreviewGradient,
                    ),
                  ),
                  Image.network(
                    item.imageUrl,
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding:
                        EdgeInsets.all(MediaQuery.of(context).size.width / 15),
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height / 1.8 / 4,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            item.description,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: MediaQuery.of(context).size.height / 50,
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                colors: [Color(0xFFE8B227), Color(0xBDBF5214)],
                              ),
                              borderRadius: BorderRadius.circular(24),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                vertical:
                                    MediaQuery.of(context).size.height / 100,
                                horizontal:
                                    MediaQuery.of(context).size.width / 5,
                              ),
                              child: Text(
                                'Start',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize:
                                      MediaQuery.of(context).size.height / 45,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      )
      .toList();
}

class StoryDialog extends StatelessWidget {
  const StoryDialog({super.key, required this.item});

  final StoryItem item;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(23),
        border: Border.all(
          color: Theme.of(context).extension<ThemeColors>()!.borderColor,
          width: 3,
        ),
      ),
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
              item.imageUrl,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}
