import 'package:grade_calculator/models/lesson.dart';

class LessonHelper {
  static List<Lesson> lessons = [];

  static void addLesson(Lesson lesson) {
    lessons.add(lesson);
  }

  static double getGradeAverage() {
    double totalPoint = 0, totalCredit = 0;
    for (Lesson lesson in lessons) {
      totalPoint += lesson.gradePoint * lesson.credit;
      totalCredit += lesson.credit;
    }
    return totalPoint / totalCredit;
     
  }
}
