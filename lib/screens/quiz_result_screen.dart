import 'package:codewiz_quiz/widgets/question_result.dart';
import 'package:codewiz_quiz/widgets/result_overview.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../quiz_state_provider.dart';

class QuizResultScreen extends StatelessWidget {
  const QuizResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<QuizProgress>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Result"),
        centerTitle: true,
      ),
      body: Column(children: [
        Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              ResultOverView(
                  heading: "Correct Answer :", value: "${provider.correct}"),
              ResultOverView(
                  heading: "Questions Skipped :",
                  value: "${provider.questionSkipped}"),
              ResultOverView(
                  heading: "Incorrect Answers :",
                  value:
                      "${provider.totalQuestion.toInt() - provider.correct - provider.questionSkipped}"),
              ResultOverView(
                  heading: "Total Questions :",
                  value: "${provider.totalQuestion.toInt()}"),
              ResultOverView(
                  heading: "Time Taken :",
                  value:
                      "${provider.hh.toString().padLeft(2, '0')}:${provider.mm.toString().padLeft(2, '0')}:${provider.ss.toString().padLeft(2, '0')}"),
            ]),
          ),
        ),
        Expanded(
          child: ListView(
            children: List.generate(
              provider.questionList.length,
              (index) => QuestionResult(quiz: provider.questionList[index]),
            ),
          ),
        ),
      ]),
    );
  }
}
