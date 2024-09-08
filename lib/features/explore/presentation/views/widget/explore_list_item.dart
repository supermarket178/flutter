import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:supermarket/core/utils/app_router.dart';
import 'package:supermarket/core/utils/styles.dart';
import 'package:supermarket/features/explore/data/models/explore_model.dart';

class ExploreListItem extends StatelessWidget {
  const ExploreListItem({super.key, required this.item});
  final ExploreModel item;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kCategoryView);
      },
      child: AspectRatio(
        aspectRatio: 175 / 190,
        child: Container(
          decoration: BoxDecoration(
            color: item.color,
            borderRadius: BorderRadius.circular(18),
            border: Border.all(
              color: item.backgroundColor,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 23),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(item.image),
                const SizedBox(height: 28),
                Text(
                  item.title,
                  style: AppStyles.styleBold16(context),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
