import 'package:flutter/material.dart';
import 'package:grade_calculator/constants/constant_values.dart';

class CustomTextFormField extends StatelessWidget {
  final String? hintText;
  final void Function(String?)? onSaved;
  final String? Function(String?)? validator;

  const CustomTextFormField({
    super.key,
    this.hintText,
    this.onSaved,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: TextFormField(
        decoration: InputDecoration(
          filled: true,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: borderRadius,
          ),
          hintText: hintText,
        ),
        onSaved: onSaved,
        textAlign: TextAlign.center,
        validator: validator,
      ),
    );
  }
}
