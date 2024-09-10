import 'package:flutter/material.dart';
import 'package:supermarket/features/favorite/presentation/views/widget/error_diolog.dart';
import 'package:supermarket/features/favorite/presentation/views/widget/favorite_list_view_item.dart';
import 'package:supermarket/features/onboarding/presentation/widget/custom_button.dart';
import 'package:supermarket/features/product_details/presentation/widget/custom_divider.dart';

class FavoriteViewBody extends StatelessWidget {
  const FavoriteViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24, left: 25, right: 25),
      child: Stack(alignment: Alignment.bottomCenter, children: [
        const Align(alignment: Alignment.topCenter, child: CustomDivider()),
        ListView.builder(
            scrollDirection: Axis.vertical,
            physics: const BouncingScrollPhysics(),
            itemCount: 7,
            itemBuilder: (context, index) {
              return const FavoriteListViewItem();
            }),
        CustomButton(title: 'Add All To Cart', onPressed: () {
           showDialog<String>(
              context: context,
              builder: (BuildContext context) => const ErrorDiolog(),
            );
        }),
      ]),
    );
  }
}
