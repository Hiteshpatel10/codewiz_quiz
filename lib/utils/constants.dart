import 'package:flutter/material.dart';

final List<Map<String, dynamic>> quizTopics = [
  {
    'name': 'Android',
    'icon': 'assets/icons/c++.png',
    'questions': [
      {'name': 'Beginner', 'questions': '10'},
      {'name': 'Intermediate', 'questions': '20'},
      {'name': 'Advances', 'questions': '20'}
    ]
  },
  {
    'name': 'C++',
    'icon': 'assets/icons/c++.png',
    'questions': [
      {'name': 'Beginner', 'questions': '10'},
      {'name': 'Intermediate', 'questions': '20'},
      {'name': 'Advances', 'questions': '20'}
    ]
  }
];

final Map<String, List<Color>> levelColors = {
  'Beginner': [Colors.lightBlue[50]!, Colors.lightBlue[100]!],
  'Intermediate': [Colors.yellow[50]!, Colors.orange[100]!],
  'Advances': [Colors.deepPurple[50]!, Colors.purple[100]!],
};

final List<Map<String, dynamic>> quizLevel = [
  {'level': 'Beginner', 'icon': 'assets/icons/level1.png'},
  {'level': 'Intermediate', 'icon': 'assets/icons/level2.png'},
  {'level': 'Advance', 'icon': 'assets/icons/level3.png'},
];

final Map<String, List<Color>> titleColor = {
  'Android': [Colors.greenAccent, Colors.green],
  'C++': [Colors.blueAccent, Colors.blue],
};
