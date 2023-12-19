import 'package:flutter/material.dart';
import 'package:grade_calculator/constants/text_styles.dart';
import 'package:grade_calculator/helpers/lesson_helper.dart';

class GradeAverageField extends StatelessWidget {
  final double gradeAverage;
  final EdgeInsetsGeometry padding;

  const GradeAverageField({
    super.key,
    required this.gradeAverage,
    this.padding = EdgeInsets.zero,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Column(
        children: [
          const Text(
            "Your grade average is",
            style: bodyTextStyle,
          ),
          Text(
            gradeAverage.toStringAsFixed(2),
            style: LessonHelper.lessons.isEmpty || gradeAverage >= 2
                ? gradeAverageTextStyle
                : gradeAverageCriticalTextStyle,
          ),
        ],
      ),
    );
  }
}
