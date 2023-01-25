import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:codewiz_quiz/quiz_state_provider.dart';
import 'package:codewiz_quiz/widgets/progress_bar.dart';
import 'package:codewiz_quiz/widgets/quiz_option_widget.dart';
import 'package:codewiz_quiz/widgets/quiz_question_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';

class QuestionScreen extends StatefulWidget {
  final String topic;
  const QuestionScreen({required this.topic, super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  var _choiceSelected = -1;
  QuerySnapshot? _quizSnapshot;

  @override
  void initState() {
    FirebaseFirestore.instance.collection('Android').get().then((snapshot) {
      setState(() {
        _quizSnapshot = snapshot;
      });
    });
    super.initState();
  }

  void _onSkip(int val) {
    Provider.of<QuizProgress>(context, listen: false).questionIndex = val;
    Provider.of<QuizProgress>(context, listen: false).questionSkipped += 1;
    _choiceSelected = -1;
  }

  void _onSubmit(int correctOption) {
    Provider.of<QuizProgress>(context, listen: false).questionIndex += 1;

    if (_choiceSelected == correctOption) {
      Provider.of<QuizProgress>(context, listen: false).correct += 1;
    }

    _choiceSelected = -1;
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<QuizProgress>(context);

    if (_quizSnapshot == null) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }
    return Scaffold(
      appBar: AppBar(title: Text(widget.topic)),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const ProgressBar(),
              Text(provider.correct.toString()),
              Text(provider.questionSkipped.toString()),
              QuizQuestionWidget(
                  question: _quizSnapshot?.docs[provider.questionIndex]
                      ['question']),
              const Gap(60),
              for (int i = 0; i < 4; i++)
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _choiceSelected = i;
                    });
                  },
                  child: QuizOptionWidget(
                    isSelected: i == _choiceSelected ? true : false,
                    option: _quizSnapshot?.docs[provider.questionIndex]
                        ['options'][i],
                    index: i + 1,
                  ),
                ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                _onSkip(provider.questionIndex + 1);
              },
              child: const Text("Skip"),
            ),
            ElevatedButton(
              onPressed: () {
                _onSubmit(_quizSnapshot?.docs[provider.questionIndex]
                    ['correctAnswerIndex']);
              },
              child: const Text("Submit"),
            ),
          ],
        ),
      ),
    );
  }
}
