import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:supermarket/constants.dart';
import 'package:supermarket/core/utils/app_router.dart';
import 'package:supermarket/core/utils/styles.dart';

class NavSignup extends StatelessWidget {
  const NavSignup({
    super.key,
    required this.title,
    required this.page,
  });
  final String title, page;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
          style: AppStyles.styleSemiBold14(context),
        ),
        GestureDetector(
          onTap: (){
            page == 'Sign Up' ? GoRouter.of(context).go(AppRouter.kSignupView) : GoRouter.of(context).go(AppRouter.kLoginView);
          },
          child: Text(
            page,
            style:
                AppStyles.styleSemiBold14(context).copyWith(color: kPrimaryColor),
          ),
        )
      ],
    );
  }
}
