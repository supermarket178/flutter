import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:supermarket/core/utils/app_router.dart';
import 'package:supermarket/core/utils/styles.dart';

class BackToHome extends StatelessWidget {
  const BackToHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        GoRouter.of(context).go(AppRouter.kHomeView);
      },
      child: Text(
        'Back To Home',
        style: AppStyles.styleSemiBold18(context).copyWith(color: Colors.black),
      ),
    );
  }
}
