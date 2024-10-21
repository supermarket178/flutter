import 'package:flutter/material.dart';
import 'package:supermarket/core/utils/styles.dart';
import 'package:supermarket/features/favorite/presentation/views/widget/Favorite_view_body.dart';
import 'package:supermarket/features/home/presentation/views/widget/custom_bottom_bar.dart';

class FavoriteView extends StatelessWidget {
  const FavoriteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        shadowColor: Colors.transparent,
        backgroundColor: Colors.white,
        title: Text(
          'Favorite',
          style: AppStyles.styleBold20(context),
        ),
        centerTitle: true,
      ),
      bottomNavigationBar: const CustomBottomBar(navbarcurrentIndex: 3),
      body: const FavoriteViewBody(),
    );
  }
}
