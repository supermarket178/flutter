import 'package:flutter/material.dart';
import 'package:supermarket/core/utils/styles.dart';
import 'package:supermarket/features/onboarding/presentation/widget/custom_button.dart';
import 'package:supermarket/mycart/presentation/views/widget/accepted_diolog.dart';

class MyCartCustomButton extends StatelessWidget {
  const MyCartCustomButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.centerRight, children: [
      CustomButton(
          title: 'Go to Checkout',
          onPressed: () {
            showDialog<String>(
              context: context,
              builder: (BuildContext context) => const AcceptedDiolog(),
            );
          }),
      Padding(
        padding: const EdgeInsets.only(right: 17),
        child: Container(
          decoration: BoxDecoration(
            color: const Color(0xff489E67),
            borderRadius: BorderRadius.circular(4),
          ),
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
              child: Text(
                '\$12.96',
                style: AppStyles.styleSemiBold12(context)
                    .copyWith(color: Colors.white),
              )),
        ),
      ),
    ]);
  }
}
