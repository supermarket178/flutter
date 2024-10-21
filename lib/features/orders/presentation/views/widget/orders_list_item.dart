import 'dart:math';
import 'package:flutter/material.dart';
import 'package:supermarket/constants.dart';
import 'package:supermarket/core/utils/styles.dart';

// ignore: must_be_immutable
class OrdersListItem extends StatelessWidget {
  bool isDelivered;

  OrdersListItem({super.key}) : isDelivered = Random().nextBool();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 20),
        decoration: BoxDecoration(
          border: Border.all(color: const Color(0xffE2E2E2)),
          borderRadius: BorderRadius.circular(18),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/image/juice.png'),
            const SizedBox(width: 40),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Orange Juice', style: AppStyles.styleBold18(context)),
                const SizedBox(height: 10),
                isDelivered
                    ? Text('Delivered',
                        style: AppStyles.styleSemiBold16(context)
                            .copyWith(color: kPrimaryColor))
                    : Text('Not Delivered',
                        style: AppStyles.styleSemiBold16(context)
                            .copyWith(color: const Color(0xffF13131))),
                const SizedBox(height: 10),
                Text(
                  '22/3/2024 22:00 PM',
                  style: AppStyles.styleMedium14(context)
                      .copyWith(color: const Color(0xff4D4D4D)),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
