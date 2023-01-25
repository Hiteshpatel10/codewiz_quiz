import 'package:flutter/material.dart';

class QuizProgress extends ChangeNotifier {
  int _correct = 0;
  int _questionIndex = 0;
  int _questionSkipped = 0;
  int _totalQuestion = 10;

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

  int get totalQuestion => _totalQuestion;

  set totalQuestion(int val) {
    _totalQuestion = val;
    notifyListeners();
  }
}
