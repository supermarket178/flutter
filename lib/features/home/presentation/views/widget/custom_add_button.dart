import 'package:flutter/material.dart';
import 'package:supermarket/constants.dart';

class CustomAddButton extends StatelessWidget {
  const CustomAddButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(17),
          color: kPrimaryColor,
        ),
        child: IconButton(
          color: Colors.white,
          icon: const Icon(Icons.add),
          onPressed: () {},
        ),
      ),
    );
  }
}
