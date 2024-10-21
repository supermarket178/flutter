import 'package:flutter/material.dart';
import 'package:supermarket/features/product_details/presentation/widget/product_detail_body.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: ProductDetailBody());
  }
}
