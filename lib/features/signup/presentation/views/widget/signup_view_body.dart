import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:supermarket/constants.dart';
import 'package:supermarket/core/utils/app_router.dart';
import 'package:supermarket/core/utils/styles.dart';
import 'package:supermarket/features/login/presentation/views/widget/custom_pass_textfield.dart';
import 'package:supermarket/features/login/presentation/views/widget/custom_text_field.dart';
import 'package:supermarket/features/login/presentation/views/widget/nav_signup.dart';
import 'package:supermarket/features/onboarding/presentation/widget/custom_button.dart';

class SignupViewBody extends StatelessWidget {
  const SignupViewBody({super.key});

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
              'Sign Up',
              style: AppStyles.styleSemiBold26(context),
            ),
            const SizedBox(height: 10), // Add some spacing
            Text(
              'Enter your credentials to continue',
              style: AppStyles.styleMedium16(context).copyWith(
                color: const Color(0xff7C7C7C),
              ),
            ),
            const SizedBox(height: 40),
            const CustomTextField(hintText: 'UserName'),
            const SizedBox(height: 30),
            const CustomTextField(
              hintText: 'Email',
            ),
            const SizedBox(height: 30),
            const CustomPassTextField(
              hintText: 'Password',
            ),
            const SizedBox(height: 20),
            RichText(
              text: TextSpan(
                text: 'By continuing you agree to our ',
                style: AppStyles.styleMedium14(context)
                    .copyWith(color: const Color(0xff7C7C7C)),
                children: [
                  TextSpan(
                    text: 'Terms of Service',
                    style: AppStyles.styleMedium14(context)
                        .copyWith(color: kPrimaryColor),
                  ),
                  TextSpan(
                    text: ' and ',
                    style: AppStyles.styleMedium14(context)
                        .copyWith(color: const Color(0xff7C7C7C)),
                  ),
                  TextSpan(
                    text: 'Privacy Policy.',
                    style: AppStyles.styleMedium14(context)
                        .copyWith(color: kPrimaryColor),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            CustomButton(
                title: 'Sign Up',
                onPressed: () {
                  GoRouter.of(context).push(AppRouter.kHomeView);
                }),
            const SizedBox(height: 25),
            const NavSignup(
              title: 'Already have an account? ',
              page: 'Login',
            )
          ],
        ),
      ),
    );
  }
}
