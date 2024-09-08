import 'package:flutter/material.dart';
import 'package:supermarket/constants.dart';
import 'package:supermarket/core/utils/styles.dart';

class ExclusiveOffer extends StatelessWidget {
  const ExclusiveOffer(
      {super.key, required this.title, required this.customList});
  final String title;
  final Widget customList;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: AppStyles.styleSemiBold24(context),
              ),
              Text('See All',
                  style: AppStyles.styleSemiBold16(context)
                      .copyWith(color: kPrimaryColor)),
            ],
          ),
        ),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: customList,
        ),
      ],
    );
  }
}
