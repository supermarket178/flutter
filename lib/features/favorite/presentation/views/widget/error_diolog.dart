import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:supermarket/core/utils/styles.dart';
import 'package:supermarket/features/onboarding/presentation/widget/custom_button.dart';
import 'package:supermarket/mycart/presentation/views/widget/back_to_home.dart';

class ErrorDiolog extends StatelessWidget {
  const ErrorDiolog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: const EdgeInsets.symmetric(horizontal: 25),
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                  onPressed: () {
                    GoRouter.of(context).pop();
                  },
                  icon: const Icon(
                    Icons.close,
                    color: Colors.black,
                  )),
            ),
            Image.asset('assets/image/error.png'),
            Text(
              'Oops! Order Failed',
              style: AppStyles.styleSemiBold28(context),
            ),
            const SizedBox(height: 20),
            Text(
              'Something went tembly wrong.',
              style: AppStyles.styleMedium16(context)
                  .copyWith(color: const Color(0xff7C7C7C)),
            ),
            const SizedBox(height: 60),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: CustomButton(
                  title: 'Please Try Again',
                  onPressed: () {
                    GoRouter.of(context).pop();
                  }),
            ),
            const SizedBox(height: 20),
            const BackToHome(),
          ],
        ),
      ),
    );
  }
}
