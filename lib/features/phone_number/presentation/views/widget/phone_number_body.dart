import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:supermarket/core/utils/styles.dart';
import 'package:supermarket/features/sign_in/presentation/views/widget/country_code_picker.dart';

class PhoneNumberBody extends StatelessWidget {
  const PhoneNumberBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 70),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
                onTap: () {
                  GoRouter.of(context).pop();
                },
                child: SvgPicture.asset('assets/image/arrow.svg')),
            const SizedBox(height: 50),
            Text(
              'Enter your mobile number',
              style: AppStyles.styleSemiBold26(context),
            ),
            const SizedBox(height: 27),
            Text(
              'Phone Number',
              style: AppStyles.styleSemiBold16(context)
                  .copyWith(color: const Color(0xff7C7C7C)),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10),
              child: CountryCodePicker(),
            )
          ],
        ),
      ),
    );
  }
}
