import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({super.key, required this.isActive});

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return isActive
        ? const Icon(
            Icons.favorite,
            color: Colors.red,
          )
        : const Icon(
            Icons.favorite_border,
          );
  }
}
