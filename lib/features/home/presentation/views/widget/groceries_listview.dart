import 'package:flutter/material.dart';
import 'package:supermarket/features/home/data/models/groceries_model.dart';
import 'package:supermarket/features/home/presentation/views/widget/groceries_list_view_item.dart';

class GroceriesListView extends StatelessWidget {
  const GroceriesListView({
    super.key,
  });
  static var groceriesModel = [
    GroceriesModel(
      name: 'Pulses',
      color: const Color(0xffFEF1E4),
      image: 'assets/image/pulses.png',
    ),
    GroceriesModel(
      name: 'Rice',
      color: const Color(0xffE5F3EA),
      image: 'assets/image/rice.png',
    ),
    GroceriesModel(
      name: 'Pulses',
      color: const Color(0xffFEF1E4),
      image: 'assets/image/pulses.png',
    ),
    GroceriesModel(
      name: 'Rice',
      color: const Color(0xffE5F3EA),
      image: 'assets/image/rice.png',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: groceriesModel
            .map((e) => IntrinsicWidth(child: GroceriesListViewItem(item: e)))
            .toList(),
      ),
    );
  }
}
