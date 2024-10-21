import 'package:flutter/material.dart';
import 'package:supermarket/features/phone_number/presentation/views/widget/custom_floating_button.dart';
import 'package:supermarket/features/phone_number/presentation/views/widget/phone_number_body.dart';

class PhoneNumber extends StatelessWidget {
  const PhoneNumber({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      floatingActionButton: CustomFloatingButton(
        index: 0,
      ),
      body: const PhoneNumberBody(),
    );
  }
}
