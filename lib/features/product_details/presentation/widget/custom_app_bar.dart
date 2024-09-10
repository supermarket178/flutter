import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class CustomAppBarDetails extends StatelessWidget {
  const CustomAppBarDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffF2F3F2),
      padding: const EdgeInsets.only(top: 20, left: 30, right: 30),
      child: Row(
        children: [
          GestureDetector(
              onTap: () {
                GoRouter.of(context).pop();
              },
              child: SvgPicture.asset('assets/image/arrow.svg')),
          const Spacer(),
          SvgPicture.asset(
            'assets/image/upload.svg',
            height: 22,
            width: 22,
          ),
        ],
      ),
    );
  }
}
