import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:supermarket/core/utils/styles.dart';
import 'package:supermarket/features/category/presentation/views/widget/grid_list_view.dart';
import 'package:supermarket/features/home/data/models/product_model.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key});
  static var items = [
    ProductModel(
        image: 'assets/image/banana.png',
        name: 'Organic Bananas',
        description: '7pcs, Priceg',
        price: 4.99),
    ProductModel(
        image: 'assets/image/banana.png',
        name: 'Organic Apple',
        description: '20pcs, Priceg',
        price: 20.99),
    ProductModel(
        image: 'assets/image/banana.png',
        name: 'Organic Orange',
        description: '7pcs, Priceg',
        price: 10),
    ProductModel(
        image: 'assets/image/banana.png',
        name: 'Organic Bananas',
        description: '7pcs, Priceg',
        price: 4.99),
    ProductModel(
        image: 'assets/image/banana.png',
        name: 'Organic Apple',
        description: '20pcs, Priceg',
        price: 20.99),
    ProductModel(
        image: 'assets/image/banana.png',
        name: 'Organic Bananas',
        description: '7pcs, Priceg',
        price: 4.99),
    ProductModel(
        image: 'assets/image/banana.png',
        name: 'Organic Apple',
        description: '20pcs, Priceg',
        price: 20.99),
    ProductModel(
        image: 'assets/image/banana.png',
        name: 'Organic Orange',
        description: '7pcs, Priceg',
        price: 10),
    ProductModel(
        image: 'assets/image/banana.png',
        name: 'Organic Bananas',
        description: '7pcs, Priceg',
        price: 4.99),
    ProductModel(
        image: 'assets/image/banana.png',
        name: 'Organic Apple',
        description: '20pcs, Priceg',
        price: 20.99),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    const SizedBox(width: 10),
                    IconButton(
                      icon: const Icon(Icons.arrow_back_ios),
                      onPressed: () {
                        GoRouter.of(context).pop();
                      },
                    ),
                    const Spacer(),
                    Text(
                      'Category',
                      style: AppStyles.styleBold20(context),
                    ),
                    const Spacer(),
                    SvgPicture.asset('assets/image/filter.svg'),
                    const SizedBox(width: 25),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                GridListView(items: items),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
