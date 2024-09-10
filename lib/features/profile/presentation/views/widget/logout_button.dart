import 'package:flutter/material.dart';
import 'package:supermarket/constants.dart';
import 'package:supermarket/core/utils/styles.dart';

class LogoutButton extends StatelessWidget {
  const LogoutButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        height: 67,
        decoration: BoxDecoration(
          color: const Color(0xffF2F3F2),
          borderRadius: BorderRadius.circular(19),
        ),
        child: Row(
          children: [
            const SizedBox(
              width: 25,
            ),
            const Icon(Icons.logout, color: kPrimaryColor),
            const Spacer(
              flex: 7,
            ),
            Text('Logout',
                style: AppStyles.styleSemiBold18(context)
                    .copyWith(color: kPrimaryColor)),
            const Spacer(
              flex: 10,
            ),
          ],
        ),
      ),
    );
  }
}
