import 'package:codewiz_quiz/screens/home_screen.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> generateRoutes(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const HomeScreen());

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
