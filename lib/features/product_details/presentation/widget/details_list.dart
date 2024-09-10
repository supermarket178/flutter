import 'package:flutter/material.dart';
import 'package:supermarket/core/utils/styles.dart';
import 'package:supermarket/features/onboarding/presentation/widget/custom_button.dart';
import 'package:supermarket/features/product_details/presentation/widget/custom_divider.dart';
import 'package:supermarket/features/product_details/presentation/widget/product_counter.dart';
import 'package:supermarket/features/product_details/presentation/widget/product_listtile.dart';
import 'package:supermarket/features/product_details/presentation/widget/product_review.dart';

class DetailsList extends StatelessWidget {
  const DetailsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25), // Uniform padding
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 20), // Adjusted spacing for consistency
          const ProductListtile(),
          const SizedBox(height: 20), // Adjusted spacing for consistency
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const ProductCounter(),
              Text(
                '\$4.99',
                style: AppStyles.styleBold24(context),
              ),
            ],
          ),
          const SizedBox(height: 20), // Adjusted spacing for consistency
          const CustomDivider(),
          const ProductReview(),
          const SizedBox(height: 20), // Consistent spacing
          CustomButton(title: 'Add To Basket', onPressed: (){
          }),
          const SizedBox(height: 30), // Extra space at the bottom
        ],
      ),
    );
  }
}
