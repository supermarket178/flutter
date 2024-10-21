import 'package:flutter/material.dart';
import 'package:supermarket/features/signup/presentation/views/widget/signup_view_body.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      resizeToAvoidBottomInset: true,
      body: SignupViewBody(),
    );
  }
}