import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:supermarket/core/utils/app_router.dart';
import 'package:supermarket/core/utils/styles.dart';
import 'package:supermarket/features/location/presentation/views/widget/custom_dropdown_textfield.dart';
import 'package:supermarket/features/onboarding/presentation/widget/custom_button.dart';

class LocationViewBody extends StatelessWidget {
  const LocationViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 70),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: GestureDetector(
                onTap: () {
                  GoRouter.of(context).pop();
                },
                child: SvgPicture.asset('assets/image/arrow.svg')),
          ),
          const SizedBox(height: 44),
          Image.asset('assets/image/map.png'),
          const SizedBox(height: 40),
          Text(
            'Select Your Location',
            style: AppStyles.styleSemiBold26(context),
          ),
          const SizedBox(height: 15),
          Text(
            'Switch on your location to stay in tune with what’s happening in your area',
            textAlign: TextAlign.center,
            style: AppStyles.styleMedium16(context).copyWith(
              color: const Color(0xff7C7C7C),
            ),
          ),
          const SizedBox(height: 60),
          const CustomDropdownTextfield(
            title: 'Your Zone',
          ),
          const SizedBox(height: 30),
          const CustomDropdownTextfield(
            title: 'Your Area',
          ),
          const SizedBox(height: 40),
          CustomButton(
              title: 'Submit',
              onPressed: () {
                GoRouter.of(context).go(AppRouter.kLoginView);
              })
        ],
      ),
    );
  }
}
