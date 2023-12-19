class Lesson {
  final String name;
  final double gradePoint;
  final int credit;

  Lesson({
    required this.name,
    required this.gradePoint,
    required this.credit,
  });

  String getLetterGrade() {
    return <double, String>{
       4.0: "AA",
       3.5: "BA",
       3.0: "BB",
       2.5: "CB",
       2.0: "CC",
       1.5: "DC",
       1.0: "DD",
       0.5: "FD",
       0.0: "FF",
    }[gradePoint]!;
  }
}
