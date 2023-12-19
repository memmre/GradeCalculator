import 'package:flutter/material.dart';
import 'package:grade_calculator/models/lesson.dart';
import 'package:grade_calculator/widgets/lesson_list_item.dart';

class LessonList extends StatelessWidget {
  final List<Lesson> lessons;
  final void Function() onLessonRemoved;

  const LessonList({
    super.key,
    required this.lessons,
    required this.onLessonRemoved,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return LessonListItem(
            lesson: lessons[index],
            onLessonRemoved: onLessonRemoved,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
          );
        },
        childCount: lessons.length,
      ),
    );
  }
}
