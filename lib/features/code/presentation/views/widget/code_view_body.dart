import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:supermarket/constants.dart';
import 'package:supermarket/core/utils/styles.dart';

class CodeViewBody extends StatelessWidget {
  const CodeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
          const SizedBox(height: 60),
          Text(
            'Enter your 4-digit code',
            style: AppStyles.styleSemiBold26(context),
          ),
          const SizedBox(height: 27),
          Text(
            'Code',
            style: AppStyles.styleSemiBold16(context)
                .copyWith(color: const Color(0xff7C7C7C)),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffE2E2E2)),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: kPrimaryColor),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xffE2E2E2)),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Text(
                'Resend Code',
                style: AppStyles.styleMedium18(context)
                    .copyWith(color: kPrimaryColor),
              )
            ],
          ),
        ],
      ),
    );
  }
}
