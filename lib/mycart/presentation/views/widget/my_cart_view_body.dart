import 'package:flutter/material.dart';
import 'package:supermarket/features/product_details/presentation/widget/custom_divider.dart';
import 'package:supermarket/mycart/presentation/views/widget/my_cart_custom_button.dart';
import 'package:supermarket/mycart/presentation/views/widget/my_cart_list_item.dart';

class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({
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
            itemCount: 7,
            itemBuilder: (context, index) {
              return const MyCartListItem();
            }),
        const MyCartCustomButton()
      ]),
    );
  }
}
