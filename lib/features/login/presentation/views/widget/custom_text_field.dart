import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';
import 'package:supermarket/constants.dart';
import 'package:supermarket/core/utils/styles.dart'; // Import the email validator package

class CustomTextField extends StatefulWidget {
  final String hintText;

  const CustomTextField({
    super.key,
    required this.hintText,
  });

  @override
  // ignore: library_private_types_in_public_api
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  final TextEditingController _controller = TextEditingController();
  String? valid;

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      setState(() {
        valid = _controller.text;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.hintText,
          style: AppStyles.styleSemiBold16(context)
              .copyWith(color: const Color(0xff7C7C7C)),
        ),
        TextField(
          controller: _controller,
          decoration: InputDecoration(
            hintText: widget.hintText,
            hintStyle: AppStyles.styleMedium18(context)
                .copyWith(color: const Color(0xffB1B1B1)),
            border: const UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xffE2E2E2)),
            ),
            enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xffE2E2E2)),
            ),
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                    color: (widget.hintText == 'Email' && valid != null)
                        ? (EmailValidator.validate(valid!)
                            ? kPrimaryColor
                            : const Color(0xffF13131))
                        : const Color(0xffE2E2E2))),
            suffixIcon: (widget.hintText == 'Email' && valid != null)
                ? (EmailValidator.validate(valid!)
                    ? const Icon(
                        Icons.done,
                        color: kPrimaryColor,
                      )
                    : const Icon(
                        Icons.close,
                        color: Color(0xffF13131),
                      ))
                : const SizedBox.shrink(),
          ),
        ),
      ],
    );
  }
}
