import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:supermarket/core/utils/styles.dart';
import 'package:supermarket/features/home/presentation/views/widget/custom_search.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          SvgPicture.asset('assets/image/carrot.svg'),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset('assets/image/location.svg'),
              const SizedBox(width: 5),
              Text('Dhaka, Banassre',
                  style: AppStyles.styleSemiBold18(context)
                      .copyWith(color: const Color(0xff4C4F4D))),
            ],
          ),
          const SizedBox(height: 20),
          const CustomSearch(),
        ],
      ),
    );
  }
}
