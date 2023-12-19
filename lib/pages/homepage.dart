import 'package:flutter/material.dart';
import 'package:grade_calculator/constants/constant_values.dart';
import 'package:grade_calculator/helpers/lesson_helper.dart';
import 'package:grade_calculator/widgets/grade_average_field.dart';
import 'package:grade_calculator/widgets/lesson_input_form.dart';
import 'package:grade_calculator/widgets/lesson_list.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  late double _gradeAverage;

  @override
  void initState() {
    super.initState();
    _updateGradeAverage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(applicationName),
        centerTitle: true,
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300,
            floating: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Column(
                children: [
                  GradeAverageField(
                    gradeAverage: _gradeAverage,
                    padding: const EdgeInsets.only(top: 8),
                  ),
                  LessonInputForm(onLessonAdded: _updateGradeAverage),
                ],
              ),
            ),
          ),
          LessonList(
            lessons: LessonHelper.lessons,
            onLessonRemoved: _updateGradeAverage,
          ),
        ],
      ),
    );
  }

  void _updateGradeAverage() {
    if (mounted) {
      setState(() {
        if (LessonHelper.lessons.isNotEmpty) {
          _gradeAverage = LessonHelper.getGradeAverage();
        } else {
          _gradeAverage = 0;
        }
      });
    }
  }
}
