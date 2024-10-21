import 'package:flutter/material.dart';
import 'package:supermarket/features/home/data/models/product_model.dart';
import 'package:supermarket/features/home/presentation/views/widget/listview_item.dart';

class GridListView extends StatelessWidget {
  const GridListView({
    super.key,
    required this.items,
  });

  final List<ProductModel> items;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: GridView.builder(
        padding: EdgeInsets.zero,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 14,
          mainAxisSpacing: 15,
          childAspectRatio: 175 / 260,
        ),
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        itemCount: items.length,
        itemBuilder: (context, index) => Container(color: Colors.amber,)));
  }
}
