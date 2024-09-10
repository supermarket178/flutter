import 'dart:async';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:supermarket/core/utils/app_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    navigateToHome();
  }

  void navigateToHome() {
    _timer = Timer(const Duration(seconds: 3), () {
      if (mounted) {
        GoRouter.of(context).go(AppRouter.konboarding); // Use go or pushReplacement
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset('assets/image/logo.png'),
        ]);
  }
}