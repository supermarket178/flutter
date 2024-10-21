import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:supermarket/core/utils/styles.dart';
import 'package:supermarket/features/orders/presentation/views/widget/orders_list_item.dart';

class OrderViewBody extends StatelessWidget {
  const OrderViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25, top: 70),
      child: Column(
        children: [
          Row(
            children: [
              GestureDetector(
                  onTap: () {
                    GoRouter.of(context).pop();
                  },
                  child: SvgPicture.asset('assets/image/arrow.svg')),
              const Spacer(),
              Text('Orders', style: AppStyles.styleBold20(context)),
              const Spacer(),
            ],
          ),
          const SizedBox(height: 20),
          Expanded(
            child: ListView.builder(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      OrdersListItem(),
                    ],
                  );
                }),
          ),
        ],
      ),
    );
  }
}
