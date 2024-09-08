import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:supermarket/constants.dart';

class CustomIndecator extends StatelessWidget {
  const CustomIndecator({
    super.key,
    required this.pageController,
  });

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: pageController,
      count: 3,
      effect: const WormEffect(
        dotHeight: 8,
        dotWidth: 8,
        activeDotColor: kPrimaryColor,
        dotColor: Color(0xff9D9892),
        type: WormType.normal,
      ),
    );
  }
}
