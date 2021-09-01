import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final String labelText;
  final IconData prefixIcon;
  final TextInputType keyBoardType;
  final int maxLine;

  const CustomTextField(
      {Key key,
      this.controller,
      this.prefixIcon,
      this.keyBoardType,
      this.hintText,
      this.labelText, this.maxLine = 1})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: keyBoardType,
      maxLines: maxLine,
      decoration: InputDecoration(
        prefixIcon: Icon(prefixIcon, color: Colors.grey.shade300),
        border: OutlineInputBorder(),
        hintText: hintText,
        hintStyle: TextStyle(
          color: Colors.grey.shade300,
        ),
        labelText: labelText,
        labelStyle: TextStyle(
          color: Colors.grey.shade300,
        ),
      ),
    );
  }
}
