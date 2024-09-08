import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: const Color(0xffE2E2E2).withOpacity(0.7),
      thickness: 1,
    );
  }
}
