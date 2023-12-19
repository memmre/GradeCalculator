import 'package:flutter/material.dart';

class DataHelper {
  static List<DropdownMenuItem<int>> generateCreditMenuItem() {
    final credits = List.generate(10, (index) => index + 1).toList();
    return credits.map((e) {
      return DropdownMenuItem(
        value: e,
        child: Text("$e ${e == 1 ? "Credit" : "Credits"}"),
      );
    }).toList();
  }

  static List<DropdownMenuItem<double>> generateLetterGradeMenuItems() {
    const Map<String, double> letterGrades = {
      "AA": 4.0,
      "BA": 3.5,
      "BB": 3.0,
      "CB": 2.5,
      "CC": 2.0,
      "DC": 1.5,
      "DD": 1.0,
      "FD": 0.5,
      "FF": 0.0,
    };
    return letterGrades.keys.map((key) {
      return DropdownMenuItem(
        value: letterGrades[key],
        child: Text(key),
      );
    }).toList();
  }
}
