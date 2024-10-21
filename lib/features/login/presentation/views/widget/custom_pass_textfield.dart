import 'package:flutter/material.dart';
import 'package:supermarket/core/utils/styles.dart';

class CustomPassTextField extends StatefulWidget {
  final String hintText;

  const CustomPassTextField({
    super.key,
    required this.hintText,
  });

  @override
  // ignore: library_private_types_in_public_api
  _CustomPassTextFieldState createState() => _CustomPassTextFieldState();
}

class _CustomPassTextFieldState extends State<CustomPassTextField> {
  bool pass = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.hintText,
          style: const TextStyle(
            color: Color(0xff7C7C7C),
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        TextFormField(
          obscureText: pass,
          decoration: InputDecoration(
            hintText: widget.hintText,
            hintStyle: AppStyles.styleMedium18(context)
                .copyWith(color: const Color(0xffB1B1B1)),
            suffixIcon: IconButton(
              icon: Icon(
                pass ? Icons.visibility_outlined : Icons.visibility_off_outlined,
              ),
              onPressed: () {
                setState(() {
                  pass = !pass;
                });
              },
            ),
            border: const UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xffE2E2E2)),
            ),
            enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xffE2E2E2)),
            ),
            focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xffE2E2E2)),
            ),
          ),
        ),
      ],
    );
  }
}