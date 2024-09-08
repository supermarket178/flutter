import 'package:flutter/material.dart';
import 'package:supermarket/features/onboarding/presentation/views/onboading_body.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: OnboadingBody()
    );
  }
}