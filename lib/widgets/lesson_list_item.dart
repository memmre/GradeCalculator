import 'package:flutter/material.dart';
import 'package:grade_calculator/constants/text_styles.dart';
import 'package:grade_calculator/helpers/lesson_helper.dart';
import 'package:grade_calculator/models/lesson.dart';

class LessonListItem extends StatelessWidget {
  final Lesson lesson;
  final EdgeInsetsGeometry padding;
  final void Function() onLessonRemoved;

  const LessonListItem({
    super.key,
    required this.lesson,
    required this.onLessonRemoved,
    this.padding = EdgeInsets.zero,
  });

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: UniqueKey(),
      onDismissed: _onDismissed,
      child: Padding(
        padding: padding,
        child: Card(
          elevation: 0,
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.blueGrey,
              child: Text(
                lesson.getLetterGrade(),
                style: const TextStyle(color: Colors.white),
              ),
            ),
            title: Text(lesson.name, style: gradeListTitleTextStyle),
            subtitle: Text(
              "${lesson.credit} ${lesson.credit == 1 ? "Credit" : "Credits"}",
            ),
          ),
        ),
      ),
    );
  }

  void _onDismissed(DismissDirection dismissDirection) {
    LessonHelper.lessons.remove(lesson);
    onLessonRemoved();
  }
}
