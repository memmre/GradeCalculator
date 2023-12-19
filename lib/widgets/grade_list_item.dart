import 'package:flutter/material.dart';
import 'package:grade_calculator/constants/text_styles.dart';
import 'package:grade_calculator/models/lesson.dart';

class GradeListItem extends StatelessWidget {
  final Lesson lesson;
  final EdgeInsetsGeometry padding;

  const GradeListItem({
    super.key,
    required this.lesson,
    this.padding = EdgeInsets.zero,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Card(
        elevation: 0,
        child: ListTile(
          title: Text(lesson.name, style: gradeListTitleStyle),
          trailing: Text(
            "${lesson.getLetterGrade()}, ${lesson.credit} "
            "${lesson.credit == 1 ? "Credit" : "Credits"}",
            style: bodyStyle,
          ),
        ),
      ),
    );
  }
}
