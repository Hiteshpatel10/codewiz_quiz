import 'package:codewiz_quiz/firestore/models/questions.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class QuestionResult extends StatelessWidget {
  final QuizQuestionModel quiz;
  const QuestionResult({required this.quiz, super.key});

  @override
  Widget build(BuildContext context) {
    const headingStyle = TextStyle(fontSize: 18, fontWeight: FontWeight.w500);
    const choiceStyle = TextStyle(fontSize: 16, fontWeight: FontWeight.w600);
    return Card(
      color: quiz.choiceSelcted == quiz.correctAnswerIndex
          ? Colors.greenAccent
          : Colors.redAccent,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              quiz.question,
              textAlign: TextAlign.center,
              style: headingStyle,
            ),
            if (quiz.choiceSelcted != -1 &&
                quiz.choiceSelcted != quiz.correctAnswerIndex) ...[
              const Gap(4),
              const Text(
                "Your Answer",
                style: choiceStyle,
              ),
              Text(quiz.options[quiz.choiceSelcted])
            ],
            const Gap(4),
            const Text(
              "Correct Answer",
              style: choiceStyle,
            ),
            Text(quiz.options[quiz.correctAnswerIndex])
          ],
        ),
      ),
    );
  }
}
