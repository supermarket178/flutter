import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:supermarket/core/utils/app_router.dart';
import 'package:supermarket/core/utils/styles.dart';
import 'package:supermarket/features/sign_in/presentation/views/widget/country_code_picker.dart';
import 'package:supermarket/features/sign_in/presentation/views/widget/signin_button.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset('assets/image/sign in.png'),
          const SizedBox(height: 90),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 235,
                  child: Text(
                    'Get your groceries with nectar',
                    style: AppStyles.styleSemiBold26(context),
                  ),
                ),
                GestureDetector(
                    onTap: () {
                      GoRouter.of(context).push(AppRouter.kPhoneNumber);
                    },
                    child: const AbsorbPointer(child: CountryCodePicker())),
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: Text(
                    'Or connect with social media',
                    style: AppStyles.styleSemiBold14(context)
                        .copyWith(color: const Color(0xff828282)),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const SigninButton(
                  title: 'Google',
                  color: Color(0xff5383EC),
                  image: 'assets/image/google.svg',
                ),
                const SizedBox(
                  height: 20,
                ),
                const SigninButton(
                  title: 'Facebook',
                  color: Color(0xff4A66AC),
                  image: 'assets/image/facebook.svg',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
