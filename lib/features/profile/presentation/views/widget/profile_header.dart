import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:supermarket/core/utils/app_router.dart';
import 'package:supermarket/core/utils/styles.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: GestureDetector(
        onTap: () {
          GoRouter.of(context).push(AppRouter.kProfileDetailsView);
        },
        child: Row(
          children: [
            Image.asset('assets/image/profile.png'),
            const SizedBox(
              width: 20,
            ),
            Expanded(
              child: ListTile(
                title: Row(
                  children: [
                    Text(
                      'Afsar Hossen',
                      style: AppStyles.styleBold20(context),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    SvgPicture.asset('assets/image/pen.svg'),
                  ],
                ),
                subtitle: Text(
                  'Imshuvo97@gmail.com',
                  style: AppStyles.styleRegular16(context)
                      .copyWith(color: const Color(0xff7C7C7C)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
