import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:supermarket/constants.dart';
import 'package:supermarket/core/utils/app_router.dart';
import 'package:supermarket/core/utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 67,
      child: ElevatedButton(
        onPressed: () {
          GoRouter.of(context).go(AppRouter.kHomeView);
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: kPrimaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(19),
          ),
        ),
        child: Text(
          title,
          style:
              AppStyles.styleSemiBold18(context).copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
