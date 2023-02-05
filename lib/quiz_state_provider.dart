import 'dart:ffi';

import 'package:flutter/material.dart';

class QuizProgress extends ChangeNotifier {
  int _correct = 0;
  int _questionIndex = 0;
  int _questionSkipped = 0;
  double _totalQuestion = 10.0;
  String _quizLevel = "Beginner";

  int get questionIndex => _questionIndex;

  set questionIndex(int val) {
    _questionIndex = val;
    notifyListeners();
  }

  int get correct => _correct;

  set correct(int val) {
    _correct = val;
    notifyListeners();
  }

  int get questionSkipped => _questionSkipped;

  set questionSkipped(int val) {
    _questionSkipped = val;
    notifyListeners();
  }

  double get totalQuestion => _totalQuestion;

  set totalQuestion(double val) {
    _totalQuestion = val;
    notifyListeners();
  }

  String get quizLevel => _quizLevel;

  set quizLevel(String level) {
    _quizLevel = level;
    notifyListeners();
  }
}
