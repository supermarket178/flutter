import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:supermarket/features/category/presentation/views/widget/grid_list_view.dart';
import 'package:supermarket/features/home/data/models/product_model.dart';
import 'package:supermarket/features/home/presentation/views/widget/custom_bottom_bar.dart';
import 'package:supermarket/features/home/presentation/views/widget/custom_search_textfield.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});
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
        backgroundColor: Colors.white,
        bottomNavigationBar: const CustomBottomBar(
          navbarcurrentIndex: 1,
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                const SizedBox(height: 20),
                Row(children: [
                  const SizedBox(width: 15),
                  const Expanded(flex: 8, child: CustomSearchTextfield()),
                  const SizedBox(width: 20),
                  SvgPicture.asset('assets/image/filter.svg', height: 18),
                  const SizedBox(width: 15),
                ]),
                const SizedBox(height: 30),
                GridListView(items: items),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
