import 'package:flutter/material.dart';
import 'package:grade_calculator/helpers/data_helper.dart';
import 'package:grade_calculator/helpers/lesson_helper.dart';
import 'package:grade_calculator/models/lesson.dart';
import 'package:grade_calculator/widgets/custom_dropdown_button.dart';
import 'package:grade_calculator/widgets/custom_icon_button.dart';
import 'package:grade_calculator/widgets/custom_text_form_field.dart';

class GradeInputForm extends StatefulWidget {
  final void Function() onGradeAdded;

  const GradeInputForm({super.key, required this.onGradeAdded});

  @override
  State<GradeInputForm> createState() => _GradeInputFormState();
}

class _GradeInputFormState extends State<GradeInputForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  double _gradePoint = 4.0;
  int _credit = 1;
  String _lessonName = "";

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          CustomTextFormField(
            hintText: "Lesson name",
            onSaved: _onLessonNameSaved,
            validator: _lessonNameValidator,
          ),
          Row(
            children: [
              Expanded(
                flex: 2,
                child: CustomDropdownButton<double>(
                  items: DataHelper.generateLetterGradeMenuItems(),
                  onChanged: _onLetterGradeChanged,
                  padding: const EdgeInsets.fromLTRB(16, 8, 8, 16),
                  value: _gradePoint,
                ),
              ),
              Expanded(
                flex: 2,
                child: CustomDropdownButton<int>(
                  items: DataHelper.generateCreditMenuItem(),
                  onChanged: _onCreditChanged,
                  padding: const EdgeInsets.fromLTRB(8, 8, 8, 16),
                  value: _credit,
                ),
              ),
              Expanded(
                child: CustomIconButton(
                  icon: const Icon(Icons.keyboard_arrow_right),
                  onPressed: _onSavePressed,
                  padding: const EdgeInsets.fromLTRB(8, 8, 16, 16),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void _onLessonNameSaved(String? value) {
    setState(() => _lessonName = value!);
  }

  String? _lessonNameValidator(String? lessonName) {
    if (lessonName!.isEmpty) {
      return "Lesson name can not be empty.";
    } else {
      return null;
    }
  }

  void _onLetterGradeChanged(double? value) {
    setState(() => _gradePoint = value!);
  }

  void _onCreditChanged(int? value) {
    setState(() => _credit = value!);
  }

  void _onSavePressed() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      Lesson lesson = Lesson(
        name: _lessonName,
        gradePoint: _gradePoint,
        credit: _credit,
      );
      LessonHelper.addLesson(lesson);
      widget.onGradeAdded();
      setState(() {
        _formKey.currentState!.reset();
        _gradePoint = 4.0;
        _credit = 1;
      });
    }
  }
}
