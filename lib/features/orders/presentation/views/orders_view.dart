import 'package:flutter/material.dart';
import 'package:supermarket/features/orders/presentation/views/widget/order_view_body.dart';

class OrdersView extends StatelessWidget {
  const OrdersView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
      body: OrderViewBody(),
    ));
  }
}
