import 'package:flutter/material.dart';
import 'package:supermarket/core/utils/styles.dart';
import 'package:supermarket/features/product_details/presentation/widget/custom_divider.dart';
import 'package:supermarket/features/product_details/presentation/widget/product_counter.dart';

class MyCartListItem extends StatelessWidget {
  const MyCartListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 25, bottom: 10),
          child: Row(
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
                  const SizedBox(height: 12),
                  const ProductCounter(),
                ],
              ),
              const Spacer(),
              Column(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.close,
                      color: Color(0xffB3B3B3),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Text(
                    '\$4.99',
                    style: AppStyles.styleSemiBold18(context),
                  ),
                ],
              ),
            ],
          ),
        ),
        const CustomDivider(),
      ],
    );
  }
}
