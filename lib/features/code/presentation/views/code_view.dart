import 'package:flutter/material.dart';
import 'package:supermarket/features/code/presentation/views/widget/code_view_body.dart';
import 'package:supermarket/features/phone_number/presentation/views/widget/custom_floating_button.dart';

class CodeView extends StatelessWidget {
  const CodeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          resizeToAvoidBottomInset: true,
          floatingActionButton: CustomFloatingButton(
    index: 1,
          ),
          body: const CodeViewBody(),
        );
  }
}
