import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:supermarket/features/product_details/presentation/widget/custom_app_bar.dart';
import 'package:supermarket/features/product_details/presentation/widget/custom_image.dart';
import 'package:supermarket/features/product_details/presentation/widget/details_list.dart';

class ProductDetailBody extends StatelessWidget {
  ProductDetailBody({super.key});

  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const CustomAppBarDetails(),
          ExpandablePageView(
            controller: pageController,
            scrollDirection: Axis.horizontal,
            children: List.generate(
              3,
              (index) => CustomImage(
                pageController: pageController,
              ),
            ),
          ),
          const DetailsList(),
        ],
      ),
    );
  }
}
