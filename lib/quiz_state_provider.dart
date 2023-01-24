import 'package:flutter/material.dart';

class QuizProgress extends ChangeNotifier {
  int _correct = 0;
  int _questionIndex = 0;

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
}
