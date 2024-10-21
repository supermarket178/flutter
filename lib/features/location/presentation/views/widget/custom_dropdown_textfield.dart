import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';
import 'package:supermarket/constants.dart';
import 'package:supermarket/core/utils/styles.dart';

class CustomDropdownTextfield extends StatelessWidget {
  const CustomDropdownTextfield({super.key, required this.title});

  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppStyles.styleSemiBold16(context)
              .copyWith(color: const Color(0xff7C7C7C)),
        ),
        DropDownTextField(
          textStyle: AppStyles.styleMedium18(context),
          listPadding: ListPadding(
            top: 7,
            bottom: 7,
          ),
          listSpace: BorderSide.strokeAlignCenter,
          searchDecoration: const InputDecoration(
            iconColor: Color(0xff7C7C7C),
            border: UnderlineInputBorder(
                borderSide: BorderSide(color: Color(0xffE2E2E2))),
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: kPrimaryColor)),
            enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Color(0xffE2E2E2))),
          ),
          clearOption: false,
          textFieldDecoration: InputDecoration(
            hintText: 'Types Of $title',
            hintStyle: AppStyles.styleMedium18(context)
                .copyWith(color: const Color(0xffB1B1B1)),
            border: const UnderlineInputBorder(
                borderSide: BorderSide(color: Color(0xffE2E2E2))),
            focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: kPrimaryColor)),
            enabledBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: Color(0xffE2E2E2))),
          ),
          dropDownItemCount: 4,
          searchShowCursor: false,
          enableSearch: true,
          searchKeyboardType: TextInputType.text,
          dropDownList: const [
            DropDownValueModel(name: 'Cairo', value: "cairo"),
            DropDownValueModel(name: 'Alexandria', value: "alexandria"),
            DropDownValueModel(name: 'Giza', value: "giza"),
            DropDownValueModel(name: 'Suez', value: "suez"),
            DropDownValueModel(name: 'Luxor', value: "luxor"),
            DropDownValueModel(name: 'Dakahlia', value: "value6"),
            DropDownValueModel(name: 'Gharbia', value: "gharbia"),
            DropDownValueModel(name: 'Ismailia', value: "ismailia"),
          ],
          onChanged: (val) {},
        ),
      ],
    );
  }
}
