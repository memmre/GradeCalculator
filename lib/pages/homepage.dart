import 'package:flutter/material.dart';
import 'package:grade_calculator/constants/constant_values.dart';
import 'package:grade_calculator/helpers/lesson_helper.dart';
import 'package:grade_calculator/widgets/grade_average_field.dart';
import 'package:grade_calculator/widgets/grade_input_form.dart';
import 'package:grade_calculator/widgets/grade_list.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  double _gradeAverage = 0;

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
                  GradeInputForm(onGradeAdded: _updateState),
                ],
              ),
            ),
          ),
          GradeList(lessons: LessonHelper.lessons),
        ],
      ),
    );
  }

  void _updateState() {
    if (mounted) {
      setState(() => _gradeAverage = LessonHelper.getGradeAverage());
    }
  }
}
