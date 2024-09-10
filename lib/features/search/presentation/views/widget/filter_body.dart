import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:supermarket/features/onboarding/presentation/widget/custom_button.dart';
import 'package:supermarket/features/search/presentation/views/widget/filter_item.dart';

class Filterbody extends StatelessWidget {
  const Filterbody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.86,
      decoration: BoxDecoration(
        color: const Color(0xffF2F3F2),
        borderRadius: BorderRadius.circular(30),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 30,
          ),
          const FilterItem(title: 'Category'),
          const SizedBox(
            height: 40,
          ),
          const FilterItem(title: 'Brand',),
          const Expanded(flex: 1,child: SizedBox(),),
          CustomButton(
            title: 'Apply Filter',
            onPressed: () {
              GoRouter.of(context).pop();
            },
          ),
          const SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}