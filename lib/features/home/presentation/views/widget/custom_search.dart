import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:supermarket/core/utils/app_router.dart';
import 'package:supermarket/core/utils/styles.dart';

class CustomSearch extends StatelessWidget {
  const CustomSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('Search Store');
        GoRouter.of(context).go(AppRouter.kSearchView);
      },
      child: Container(
          decoration: BoxDecoration(
            color: const Color(0xffF2F3F2),
            borderRadius: BorderRadius.circular(15),
            border: const Border(
              top: BorderSide.none,
              bottom: BorderSide.none,
              left: BorderSide.none,
              right: BorderSide.none,
            ),
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 20, top: 20, bottom: 20, right: 7),
                child: SvgPicture.asset(
                  'assets/image/search.svg',
                ),
              ),
              Text('Search Store',
                  style: AppStyles.styleSemiBold14(context).copyWith(
                    color: const Color(0xff7C7C7C),
                  )),
            ],
          )),
    );
  }
}
