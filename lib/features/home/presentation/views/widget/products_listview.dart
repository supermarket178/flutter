import 'package:flutter/material.dart';
import 'package:supermarket/features/home/data/models/product_model.dart';
import 'package:supermarket/features/home/presentation/views/widget/listview_item.dart';

class ProductsListView extends StatelessWidget {
  const ProductsListView({super.key});
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
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: items
            .map((e) => IntrinsicWidth(
                    child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 7),
                  child: ListviewItem(item: e),
                )))
            .toList(),
      ),
    );
  }
}
