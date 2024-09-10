import 'package:flutter/material.dart';
import 'package:supermarket/core/utils/styles.dart';
import 'package:supermarket/features/product_details/presentation/widget/custom_divider.dart';

class ProfileDetailsListItem extends StatelessWidget {
  const ProfileDetailsListItem(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.icon});

  final String title;
  final String subtitle;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const SizedBox(
              width: 25,
            ),
            Icon(
              icon,
              color: const Color(0xff666666),
              size: 20,
            ),
            const SizedBox(
              width: 12,
            ),
            Text(title,
                style: AppStyles.styleMedium16(context)
                    .copyWith(fontWeight: FontWeight.w400))
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25, top: 18, bottom: 10),
          child: Text(subtitle,
              style: AppStyles.styleMedium16(context)
                  .copyWith(fontWeight: FontWeight.w400)),
        ),
        const CustomDivider(),
      ],
    );
  }
}
