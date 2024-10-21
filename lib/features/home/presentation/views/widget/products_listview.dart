import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:supermarket/core/utils/widget/custom_error_widget.dart';
import 'package:supermarket/core/utils/widget/custom_loading_indicator.dart';
import 'package:supermarket/features/home/presentation/manager/bestseller_prducts/bestseller_products_cubit.dart';
import 'package:supermarket/features/home/presentation/views/widget/listview_item.dart';

class ProductsListView extends StatelessWidget {
  const ProductsListView({super.key});
  
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BestsellerProductsCubit, BestsellerProductsState>(
      builder: (context, state) {
        if (state is BestsellerProductsSuccess) {
          return SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: state.products
                  .map((e) => IntrinsicWidth(
                          child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 7),
                        child: ListviewItem(item: e),
                      )))
                  .toList(),
            ),
          );
        } else if (state is BestsellerProductsFailure) {
          return CustomErrorWidget(errorMessage: state.message);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
