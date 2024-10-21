import 'package:flutter/material.dart';
import 'package:supermarket/core/utils/styles.dart';
import 'package:supermarket/features/home/presentation/views/widget/custom_bottom_bar.dart';
import 'package:supermarket/features/mycart/presentation/views/widget/my_cart_view_body.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        shadowColor: Colors.transparent,
        backgroundColor: Colors.white,
        title: Text(
          'My Cart',
          style: AppStyles.styleBold20(context),
        ),
        centerTitle: true,
      ),
      bottomNavigationBar: const CustomBottomBar(navbarcurrentIndex: 2),
      body: const MyCartViewBody(),
    );
  }
}
