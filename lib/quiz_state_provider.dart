import 'package:codewiz_quiz/firestore/models/questions.dart';
import 'package:flutter/material.dart';

class QuizProgress extends ChangeNotifier {
  int _correct = 0;
  int _questionIndex = 0;
  int _questionSkipped = 0;
  double _totalQuestion = 10.0;
  String _quizLevel = "Beginner";
  List<QuizQuestionModel> _questionList = [];

  bool _isLoading = false;

  //Time
  int _hH = 0;
  int _mM = 0;
  int _sS = 0;

  set reset(int val) {
    _correct = 0;
    _questionIndex = 0;
    _questionSkipped = 0;
    _hH = 0;
    _mM = 0;
    _sS = 0;
  }

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

  List<QuizQuestionModel> get questionList => _questionList;

  set questionList(List<QuizQuestionModel> list) {
    _questionList = list;
    notifyListeners();
  }

  // TIme getter ans setters

  int get hh => _hH;

  set hh(int hour) {
    _hH = hour;
    notifyListeners();
  }

  int get mm => _mM;

  set mm(int min) {
    _mM = min;
    notifyListeners();
  }

  int get ss => _sS;

  set ss(int sec) {
    _sS = sec;
    notifyListeners();
  }

  bool get isLoading => _isLoading;

  set isLoading(bool status) {
    _isLoading = status;
    notifyListeners();
  }
}
