import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supermarket/constants.dart';
import 'package:supermarket/features/home/presentation/views/widget/custom_indecator.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({super.key, required this.pageController});

  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Stack(
        children: [
          Positioned.fill(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(18),
              child: Image.asset(
                fit: BoxFit.cover,
                'assets/image/bannel1.png',
              ),
            ),
          ),
          SizedBox(
            height: 120,
            child: Column(
              children: [
                Row(
                  children: [
                    Image.asset('assets/image/fruits.png'),
                    const SizedBox(width: 18),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Fresh Vegetables',
                          style: GoogleFonts.aclonica(
                            textStyle: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Text(
                          'Get Up To 40% OFF',
                          style: GoogleFonts.abhayaLibre(
                              textStyle: const TextStyle(
                            color: kPrimaryColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          )),
                        ),
                      ],
                    ),
                  ],
                ),
                CustomIndecator(pageController: pageController),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
