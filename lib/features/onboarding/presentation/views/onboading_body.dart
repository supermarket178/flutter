import 'package:flutter/material.dart';
import 'package:supermarket/features/onboarding/presentation/widget/custom_button.dart';

class OnboadingBody extends StatelessWidget {
  const OnboadingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Image.asset(
            'assets/image/onboaring.png', // Replace with your image path
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: 30.0), // Optional padding
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end, // Center vertically
            crossAxisAlignment:
                CrossAxisAlignment.center, // Center horizontally
            children: [
              Image.asset('assets/image/carrot.png'),
              const SizedBox(height: 20), // Adjust space between elements
              const Text(
                'Welcome\nto our store',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 48,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'inter',
                ),
              ),
              Text(
                'Get your groceries in as fast as one hour',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white.withOpacity(0.7),
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'inter',
                ),
              ),
              const SizedBox(height: 40),
              const CustomButton(
                title: 'Get Started',
              ),
              const SizedBox(height: 90),
            ],
          ),
        ),
      ],
    );
  }
}
