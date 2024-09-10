import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:supermarket/core/utils/styles.dart';
import 'package:supermarket/features/search/presentation/views/widget/filter_body.dart';

class CustomFilter extends StatelessWidget {
  const CustomFilter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          showModalBottomSheet(
            backgroundColor: Colors.white,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
              ),
            ),
            builder: (context) => Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 40,
                ),
                Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                          padding: const EdgeInsets.only(left: 25, top: 25),
                          onPressed: () {
                            GoRouter.of(context).pop();
                          },
                          icon: const Icon(
                            Icons.close,
                            color: Colors.black,
                          )),
                      const Expanded(flex: 7, child: SizedBox()),
                      Text(
                        'Filters',
                        style: AppStyles.styleBold20(context),
                      ),
                      const Expanded(flex: 10, child: SizedBox()),
                    ],
                  ),
                ),
                const Filterbody(),
              ],
            ),
            isScrollControlled: true,
            context: context,
          );
        },
        child: SvgPicture.asset('assets/image/filter.svg', height: 18));
  }
}
