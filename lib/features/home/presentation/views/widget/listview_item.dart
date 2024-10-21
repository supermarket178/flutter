import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:supermarket/core/utils/app_router.dart';
import 'package:supermarket/core/utils/styles.dart';
import 'package:supermarket/features/home/data/models/product_model/product_model.dart';
import 'package:supermarket/features/home/presentation/views/widget/custom_add_button.dart';

class ListviewItem extends StatelessWidget {
  const ListviewItem({super.key, required this.item});
  final ProductModel item;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kproductdetail);
      },
      child: Container(
        width: 170,
        height: 260,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(18),
          border: Border.all(
            color: const Color(0xffE2E2E2),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 10),
              Center(
                child: Image.network(
                  (item.images![0]) ??
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRbKnGZQfGZl7AaWeLFEUphgLqbbGYGOvwyvA&s',
                  height: 100, // Fixed height for the image
                ),
              ),
              const SizedBox(height: 20),
              Text(
                item.title ?? '',
                style: AppStyles.styleBold16(context),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 5),
              Text(
                item.description ?? '',
                style: AppStyles.styleMedium14(context),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Text(
                      '\$${item.price}',
                      style: AppStyles.styleBold16(context),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const CustomAddButton(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
