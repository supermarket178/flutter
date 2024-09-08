import 'package:flutter/material.dart';
import 'package:supermarket/features/home/presentation/views/widget/custom_indecator.dart';

class CustomImage extends StatelessWidget {
  const CustomImage({
    super.key,
    required this.pageController,
  });

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 290,
      child: Stack(
        children: [
          Positioned(
            child: Container(
              decoration: const BoxDecoration(
                color: Color(0xffF2F3F2),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25),
                ),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Center(child: Image.asset('assets/image/apple.png')),
              CustomIndecator(pageController: pageController),
            ],
          ),
        ],
      ),
    );
  }
}
