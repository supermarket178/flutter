import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:supermarket/constants.dart';
import 'package:supermarket/core/utils/app_router.dart';

class CustomFloatingButton extends StatelessWidget {
  CustomFloatingButton({super.key, required this.index});
  final int index;
  final List<String> routes = [
    AppRouter.kCodeView,
    AppRouter.kLocationView,
  ];
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: const CircleBorder(),
      backgroundColor: kPrimaryColor,
      onPressed: () {
        GoRouter.of(context).push(routes[index]);
      },
      child: const Icon(
        Icons.arrow_forward_ios,
        color: Colors.white,
      ),
    );
  }
}
