import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:supermarket/features/home/presentation/views/widget/custom_appbar.dart';
import 'package:supermarket/features/home/presentation/views/widget/exclusive_offer.dart';
import 'package:supermarket/features/home/presentation/views/widget/groceries_listview.dart';
import 'package:supermarket/features/home/presentation/views/widget/pageview_item.dart';
import 'package:supermarket/features/home/presentation/views/widget/products_listview.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key, required this.pageController});

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 50),
          const CustomAppBar(),
          const SizedBox(height: 20),
          ExpandablePageView(
            controller: pageController, // Use the provided pageController
            scrollDirection: Axis.horizontal,
            children: List.generate(

                3,
                (index) => PageViewItem(
                  pageController: pageController,
                )),
          ),
          const SizedBox(height: 30),
          const ExclusiveOffer(
            title: 'Exclusive Offer',
            customList: ProductsListView(),
          ),
          const SizedBox(height: 30),
          const ExclusiveOffer(
            title: 'Best Seller',
            customList: ProductsListView(),
          ),
          const SizedBox(height: 30),
          const ExclusiveOffer(
            title: 'Groceries',
            customList: GroceriesListView(),
          ),
          const SizedBox(height: 30),
          const Padding(
            padding: EdgeInsets.only(left: 25),
            child: ProductsListView(),
          ),
        ],
      ),
    );
  }
}
