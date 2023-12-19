import 'package:flutter/material.dart';
import 'package:grade_calculator/constants/constant_values.dart';

class CustomDropdownButton<T> extends StatelessWidget {
  final T value;
  final EdgeInsetsGeometry padding;
  final List<DropdownMenuItem<T>> items;
  final void Function(T?) onChanged;

  const CustomDropdownButton({
    super.key,
    required this.items,
    required this.onChanged,
    required this.value,
    this.padding = EdgeInsets.zero,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: borderRadius,
          color: Theme.of(context).cardColor,
        ),
        child: Center(
          child: DropdownButton<T>(
            items: items,
            onChanged: onChanged,
            underline: Container(),
            value: value,
          ),
        ),
      ),
    );
  }
}
