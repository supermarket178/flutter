import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:supermarket/constants.dart';
import 'package:supermarket/core/utils/styles.dart';

class OrdersListItem extends StatefulWidget {
  const OrdersListItem({
    super.key,
  });

  @override
  State<OrdersListItem> createState() => _OrdersListItemState();
}

class _OrdersListItemState extends State<OrdersListItem> {
  bool isDelivered = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: GestureDetector(
        onTap: () {
          setState(() {
            isDelivered = !isDelivered;
            log(isDelivered.toString());
          });
        },
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(vertical: 20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              border: Border.all(color: const Color(0xffE2E2E2))),
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
      ),
    );
  }
}
