// ignore: unused_import
import 'dart:io';

void main() {
  final students = [
    {
      "name": "Alice",
      "scores": [85, 90, 78],
    },
    {
      "name": "Bob",
      "scores": [88, 76, 95],
    },
    {
      "name": "Charlie",
      "scores": [90, 92, 85],
    },
  ];

  final Map<String, double> avgScore = {};

  for (var student in students) {
    String name = student['name'] as String;
    List<int> scores = List<int>.from(student['scores'] as List);

    double sum = 0;
    for (var score in scores) {
      sum = sum + score;
    }

    double avg = sum / scores.length;
    double round2dec = (avg * 100).round() / 100;
    avgScore[name] = round2dec;
  }

  List<MapEntry<String, double>> sortList = avgScore.entries.toList();
  sortList.sort((a, b) => b.value.compareTo(a.value));

  print("{");
  for (var newList in sortList) {
    print(' "${newList.key}": ${newList.value},');
  }
  print("}");
}
