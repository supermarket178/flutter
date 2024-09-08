import 'package:flutter/material.dart';
import 'package:supermarket/constants.dart';
import 'package:supermarket/core/utils/styles.dart';

class ProductCounter extends StatefulWidget {
  const ProductCounter({
    super.key,
  });

  @override
  State<ProductCounter> createState() => _ProductCounterState();
}

class _ProductCounterState extends State<ProductCounter> {
  int counter = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
            onPressed: () {
              if (counter > 1) {
                setState(() {
                  counter--;
                });
              }
            },
            icon: const Icon(Icons.remove, color: Color(0xffB3B3B3))),
        Container(
          height: 45,
          width: 45,
          decoration: BoxDecoration(
            border: Border.all(
              color: const Color(0xffE2E2E2),
            ),
            borderRadius: BorderRadius.circular(17),
          ),
          child: Center(
            child: Text(
              '$counter',
              style: AppStyles.styleSemiBold18(context),
            ),
          ),
        ),
        IconButton(
            onPressed: () {
              setState(() {
                counter++;
              });
            },
            icon: const Icon(Icons.add, color: kPrimaryColor)),
      ],
    );
  }
}
