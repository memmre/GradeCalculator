import 'package:flutter/material.dart';
import 'package:grade_calculator/constants/constant_values.dart';

class CustomIconButton extends StatelessWidget {
  final Widget icon;
  final EdgeInsetsGeometry padding;
  final void Function() onPressed;

  const CustomIconButton({
    super.key,
    required this.icon,
    required this.onPressed,
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
        child: IconButton(
          icon: icon,
          onPressed: onPressed,
        ),
      ),
    );
  }
}
