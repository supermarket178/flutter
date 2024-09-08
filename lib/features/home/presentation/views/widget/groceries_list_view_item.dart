import 'package:flutter/material.dart';
import 'package:supermarket/core/utils/styles.dart';
import 'package:supermarket/features/home/data/models/groceries_model.dart';

class GroceriesListViewItem extends StatelessWidget {
  const GroceriesListViewItem({
    super.key,
    required this.item,
  });

  final GroceriesModel item;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: Container(
        width: 250,
        height: 105,
        decoration: BoxDecoration(
          color: item.color,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            children: [
              Image.asset(item.image),
              const SizedBox(width: 18),
              Text(
                item.name,
                style: AppStyles.styleBold20(context),
              )
            ],
          ),
        ),
      ),
    );
  }
}
