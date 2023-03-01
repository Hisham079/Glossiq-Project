import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:sample_glossiq/const/app_const.dart';

class TextFieldWidget extends StatelessWidget {
  TextFieldWidget(
      {super.key, required this.labelText, required this.initialValue});
  String labelText;
  String initialValue;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(top: 10, left: 10, right: 8),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: const Color(0xFFF4F4F4)),
        child: TextFormField(
          initialValue: initialValue,
          style: headStyleNormal.copyWith(
              fontWeight: FontWeight.w600, color: fieldTextGrey, fontSize: 16),
          decoration: InputDecoration(
              enabledBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
              border: InputBorder.none,
              prefixStyle: const TextStyle(
                  color: Color(
                    0xFF161616,
                  ),
                  fontWeight: FontWeight.bold),
              labelText: labelText,
              labelStyle: const TextStyle(color: Color(0xFF6F6F6F),fontWeight: FontWeight.normal)),
        ));
  }
}
