import 'package:flutter/material.dart';
import 'package:supermarket/core/utils/styles.dart';
import 'package:supermarket/features/product_details/presentation/widget/custom_divider.dart';

class ProductReview extends StatelessWidget {
  const ProductReview({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          contentPadding: EdgeInsets.zero, // Remove default padding
          title: Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Product Detail',
                  style: AppStyles.styleSemiBold16(context),
                ),
                Transform.rotate(
                  angle: 90 * 3.1415926535897932 / 180,
                  child: const Icon(
                    Icons.arrow_forward_ios,
                    size: 20,
                  ),
                )
              ],
            ),
          ),
          subtitle: Text(
            'Apples are nutritious. Apples may be good for weight loss. Apples may be good for your heart. As part of a healthy and varied diet.',
            style: AppStyles.styleMedium14(context)
                .copyWith(color: const Color(0xff7C7C7C)),
          ),
        ),
        const CustomDivider(),
        Row(
          children: [
            Text(
              'Nutritions',
              style: AppStyles.styleSemiBold16(context),
            ),
            const Spacer(),
            Container(
              margin: const EdgeInsets.only(right: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: const Color(0xffEBEBEB),
              ),
              padding: const EdgeInsets.all(6),
              child: const Text('100g'),
            ),
            Transform.rotate(
              angle: 180 * 3.1415926535897932,
              child: const Icon(
                Icons.arrow_forward_ios,
                size: 20,
              ),
            ),
          ],
        ),
        const CustomDivider(),
        Row(
          children: [
            Text(
              'Reviews',
              style: AppStyles.styleSemiBold16(context),
            ),
            const Spacer(),
            Row(
              children: List.generate(
                5,
                (index) => const Icon(
                  Icons.star,
                  color: Color(0xffF3603F),
                ),
              ),
            ),
            const SizedBox(width: 20),
            Transform.rotate(
              angle: 180 * 3.1415926535897932,
              child: const Icon(
                Icons.arrow_forward_ios,
                size: 20,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
