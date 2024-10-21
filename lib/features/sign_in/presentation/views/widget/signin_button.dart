import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:supermarket/core/utils/styles.dart';

class SigninButton extends StatelessWidget {
  const SigninButton({
    super.key,
    required this.title,
    required this.image,
    required this.color,
  });
  final String title;
  final String image;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 67,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(19),
        color: color,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            width: 35,
          ),
          SvgPicture.asset(image),
          const SizedBox(
            width: 50,
          ),
          Text(
            'Continue with $title',
            style: AppStyles.styleSemiBold18(context)
                .copyWith(color: Colors.white),
          )
        ],
      ),
    );
  }
}
