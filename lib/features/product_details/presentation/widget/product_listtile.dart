import 'package:flutter/material.dart';
import 'package:supermarket/core/utils/styles.dart';
import 'package:supermarket/features/product_details/presentation/widget/custom_icon.dart';

class ProductListtile extends StatefulWidget {
  const ProductListtile({super.key});

  @override
  State<ProductListtile> createState() => _ProductListtileState();
}

class _ProductListtileState extends State<ProductListtile> {
  bool isActive = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Text(
        'Naturel Red Apple',
        style: AppStyles.styleBold24(context),
      ),
      subtitle: Text(
        '1kg, Price',
        style: AppStyles.styleSemiBold16(context)
            .copyWith(color: const Color(0xff7C7C7C)),
      ),
      trailing: GestureDetector(
        onTap: () {
          setState(() {
            isActive = !isActive; // Toggle the state and rebuild the widget
          });
        },
        child: CustomIcon(isActive: isActive),
      ),
    );
  }
}
