

import 'package:flutter/material.dart';

import '../utils/app_text.dart';

class UnderlineTextField extends StatelessWidget {
  final Widget? prefixIcon;
  final String hintText;
  final Widget? suffixButton;

  const UnderlineTextField({
    Key? key,
    required this.prefixIcon,
    required this.hintText,
    this.suffixButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.grey)),
      ),
      child: TextField(
        style:  cardScreenHeaderTextStyle(),
        decoration: InputDecoration(
          prefixIcon: prefixIcon,
          suffixIcon: suffixButton,
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}