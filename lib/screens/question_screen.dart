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
  QuerySnapshot _quizSnapshot;

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
  }

  @override
  Widget build(BuildContext context) {
    final questionIndex = Provider.of<QuizProgress>(context).questionIndex;
    return Scaffold(
      appBar: AppBar(title: Text(widget.topic)),
      body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: FutureBuilder<QuerySnapshot>(
            future: FirebaseFirestore.instance.collection('Android').get(),
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                return Text('Error = ${snapshot.error}');
              }
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }

              return SingleChildScrollView(
                child: Column(
                  children: [
                    const ProgressBar(),
                    QuizQuestionWidget(
                        question: snapshot.data!.docs[questionIndex]
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
                          option: snapshot.data!.docs[questionIndex]['options']
                              [i],
                          index: i + 1,
                        ),
                      ),
                  ],
                ),
              );
            },
          )),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: const Text("Skip"),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Next"),
            ),
          ],
        ),
      ),
    );
  }
}
