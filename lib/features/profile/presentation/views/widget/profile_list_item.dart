import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:supermarket/core/utils/styles.dart';

class ProfileListItem extends StatelessWidget {
  const ProfileListItem({super.key, required this.title, required this.icon, required this.route});
  final String title;
  final String icon;
  final String route;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
      child: GestureDetector(
        onTap: () {
          GoRouter.of(context).push(route);
        },
        child: Row(
          children: [
            SvgPicture.asset(icon),
            const SizedBox(
              width: 20,
            ),
            Text(title, style: AppStyles.styleSemiBold18(context)),
            const Spacer(),
            SvgPicture.asset('assets/image/back arrow.svg'),
          ],
        ),
      ),
    );
  }
}
