import 'package:flutter/material.dart';
import 'package:supermarket/core/utils/styles.dart';
import 'package:supermarket/features/onboarding/presentation/widget/custom_button.dart';
import 'package:supermarket/features/mycart/presentation/views/widget/back_to_home.dart';

class AcceptedDiolog extends StatelessWidget {
  const AcceptedDiolog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog.fullscreen(
      backgroundColor: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 30),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 70),
            Image.asset(
              'assets/image/accepted.png',
              height: 240,
              width: 270,
            ),
            const SizedBox(height: 66),
            Text(
              'Your Order has been accepted',
              style: AppStyles.styleSemiBold28(context),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            Text(
              'Your items has been placcd and is on it’s way to being processed',
              style: AppStyles.styleMedium16(context)
                  .copyWith(color: const Color(0xff7C7C7C)),
              textAlign: TextAlign.center,
            ),
            const Spacer(),
            CustomButton(title: 'Track Order', onPressed: () {}),
            const SizedBox(height: 20),
            const BackToHome(),
          ],
        ),
      ),
    );
  }
}
