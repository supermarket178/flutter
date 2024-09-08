import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:supermarket/core/utils/styles.dart';

class CustomSearchTextfield extends StatelessWidget {
  const CustomSearchTextfield({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: 16),
        hintText: 'Search Store',
        hintStyle: AppStyles.styleSemiBold14(context).copyWith(
          color: const Color(0xff7C7C7C),
        ),
        prefixIcon: Padding(
          padding: const EdgeInsets.only(left: 15, top: 16, bottom: 16),
          child: SvgPicture.asset(
            'assets/image/search.svg',
          ),
        ),
        filled: true,
        fillColor: const Color(0xffF2F3F2),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
