import 'package:flutter/material.dart';
import 'package:grade_calculator/models/lesson.dart';
import 'package:grade_calculator/widgets/grade_list_item.dart';

class GradeList extends StatelessWidget {
  final List<Lesson> lessons;

  const GradeList({
    super.key,
    required this.lessons,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return GradeListItem(
            lesson: lessons[index],
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
          );
        },
        childCount: lessons.length,
      ),
    );
  }
}
