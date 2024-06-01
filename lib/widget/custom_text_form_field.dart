import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField(
      {super.key,
      required this.label,
      required this.suffixIcon,
      required this.keyboardType});
  TextInputType keyboardType;
  String label;
  Widget suffixIcon;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        label: Text(label),
      ),
    );
  }
}
