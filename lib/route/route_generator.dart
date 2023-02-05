import 'package:codewiz_quiz/screens/home_screen.dart';
import 'package:codewiz_quiz/screens/question_screen.dart';
import 'package:codewiz_quiz/screens/quiz_option_screen.dart';
import 'package:codewiz_quiz/screens/quiz_result_screen.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> generateRoutes(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const HomeScreen());

      case '/quiz':
        if (args is String) {
          return MaterialPageRoute(builder: (_) => QuestionScreen(topic: args));
        }
        return _errorRoute();

      case '/quiz-options':
        if (args is String) {
          return MaterialPageRoute(
              builder: (_) => QuizOptionScreen(topic: args));
        }
        return _errorRoute();

      case '/quiz-result':
        return MaterialPageRoute(builder: (_) => const QuizResultScreen());

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('No route'),
          centerTitle: true,
        ),
        body: const Center(
          child: Text(
            'Error 404! Route Not Found',
            style: TextStyle(color: Colors.red, fontSize: 18.0),
          ),
        ),
      );
    });
  }
}
