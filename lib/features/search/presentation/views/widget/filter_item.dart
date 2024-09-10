import 'package:flutter/material.dart';
import 'package:supermarket/core/utils/styles.dart';
import 'package:supermarket/features/search/presentation/views/widget/check_item.dart';

class FilterItem extends StatelessWidget {
  const FilterItem({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: AppStyles.styleSemiBold24(context)),
        const SizedBox(
          height: 25,
        ),
        ListView.builder(
          padding: const EdgeInsets.all(0),
          shrinkWrap: true,
          itemCount: 4,
          itemBuilder: (context, index) {
            return const CheckItem();
          },
        ),
      ],
    );
  }
}
