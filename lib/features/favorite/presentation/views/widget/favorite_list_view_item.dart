import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:supermarket/core/utils/styles.dart';
import 'package:supermarket/features/product_details/presentation/widget/custom_divider.dart';

class FavoriteListViewItem extends StatelessWidget {
  const FavoriteListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),
        Row(
          children: [
            Image.asset('assets/image/pepper.png'),
            const SizedBox(width: 32),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Bell Pepper Red',
                  style: AppStyles.styleBold16(context),
                ),
                const SizedBox(height: 5),
                Text(
                  '1kg, Price',
                  style: AppStyles.styleMedium14(context),
                ),
              ],
            ),
            const Spacer(),
            Row(
              children: [
                Text(
                  '\$4.99',
                  style: AppStyles.styleSemiBold16(context),
                ),
                const SizedBox(width: 7),
                Transform.rotate(
                  angle: 13 / 4,
                  child: GestureDetector(
                    onTap: () {},
                    child: Transform.rotate(
                        angle: 12 / 4,
                        child: SvgPicture.asset('assets/image/back arrow.svg')),
                  ),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        const CustomDivider(),
      ],
    );
  }
}
