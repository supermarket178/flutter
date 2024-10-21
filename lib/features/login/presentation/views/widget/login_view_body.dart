import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:supermarket/core/utils/app_router.dart';
import 'package:supermarket/core/utils/styles.dart';
import 'package:supermarket/features/login/presentation/views/widget/custom_pass_textfield.dart';
import 'package:supermarket/features/login/presentation/views/widget/custom_text_field.dart';
import 'package:supermarket/features/login/presentation/views/widget/nav_signup.dart';
import 'package:supermarket/features/onboarding/presentation/widget/custom_button.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 70),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Center(
              child: SvgPicture.asset(
                'assets/image/carrot.svg',
                height: 55,
                width: 47,
              ),
            ),
            const SizedBox(height: 90), // Add some spacing
            Text(
              'Login',
              style: AppStyles.styleSemiBold26(context),
            ),
            const SizedBox(height: 10), // Add some spacing
            Text(
              'Enter your email and password',
              style: AppStyles.styleMedium16(context).copyWith(
                color: const Color(0xff7C7C7C),
              ),
            ),
            const SizedBox(height: 40), // Add some spacing
            const CustomTextField(
              hintText: 'Email',
            ),
            const SizedBox(height: 30), // Add some spacing
            const CustomPassTextField(
              hintText: 'Password',
            ),
            const SizedBox(height: 20),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                'Forgot Password?',
                style: AppStyles.styleMedium14(context).copyWith(
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(height: 30),
            CustomButton(
                title: 'Login',
                onPressed: () {
                  log('Login button pressed');
                  GoRouter.of(context).push(AppRouter.kHomeView);
                }),
            const SizedBox(height: 25),
            const NavSignup(
              title: 'Don’t have an account? ',
              page: 'Sign Up',
            )
          ],
        ),
      ),
    );
  }
}
