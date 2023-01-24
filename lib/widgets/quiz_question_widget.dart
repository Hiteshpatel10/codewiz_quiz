import 'package:flutter/material.dart';

class QuizQuestionWidget extends StatelessWidget {
  final String question;
  const QuizQuestionWidget({required this.question, super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          question,
          style: const TextStyle(
              fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
    );
  }
}
