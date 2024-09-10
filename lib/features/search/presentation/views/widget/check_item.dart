import 'package:flutter/material.dart';
import 'package:supermarket/constants.dart';
import 'package:supermarket/core/utils/styles.dart';

class CheckItem extends StatefulWidget {
  const CheckItem({super.key});

  @override
  State<CheckItem> createState() => _CheckItemState();
}

class _CheckItemState extends State<CheckItem> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                isChecked = !isChecked;
              });
            },
            child: Container(
              height: 24,
              width: 24,
              decoration: BoxDecoration(
                color: isChecked ? kPrimaryColor : Colors.transparent,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: isChecked?Colors.transparent: const Color(0xffB1B1B1) ,
                ),
              ),
              child: isChecked
                  ? const Icon(
                      Icons.check,
                      size: 20,
                      color: Colors.white,
                    )
                  : null,
            ),
          ),
          const SizedBox(width: 10),
          Text(
            'Organic Bananas',
            style: AppStyles.styleMedium16(context)
                .copyWith(color: isChecked ? kPrimaryColor : Colors.black),
          ),
        ],
      ),
    );
  }
}