import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:codewiz_quiz/firestore/models/questions.dart';
import 'package:codewiz_quiz/quiz_state_provider.dart';
import 'package:codewiz_quiz/widgets/progress_bar.dart';
import 'package:codewiz_quiz/widgets/quiz_option_widget.dart';
import 'package:codewiz_quiz/widgets/quiz_question_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';

class QuestionScreen extends StatefulWidget {
  final String topic;
  final String level;
  const QuestionScreen({required this.topic, required this.level, super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  var _choiceSelected = -1;
  QuerySnapshot? _quizSnapshot;
  List<Map<String, dynamic>> quizData = [];
  List<QuizQuestionModel> questionList = [];

  @override
  void initState() {
    FirebaseFirestore.instance
        .collection(widget.topic)
        .where('level', isEqualTo: widget.level)
        .get()
        .then((snapshot) {
      setState(() {
        _quizSnapshot = snapshot;
        questionList = _quizSnapshot!.docs
            .map((doc) =>
                QuizQuestionModel.fromMap(doc.data() as Map<String, dynamic>))
            .toList();

        questionList.shuffle();
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
    provider.questionList =
        questionList.sublist(0, provider.totalQuestion.toInt());

    if (_quizSnapshot == null) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.topic),
        centerTitle: true,
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: Padding(
            padding: EdgeInsets.all(12.0),
            child: ProgressBar(),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              QuizQuestionWidget(
                  question:
                      provider.questionList[provider.questionIndex].question),
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
                    option: provider
                        .questionList[provider.questionIndex].options[i],
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
                if (provider.questionIndex + 1 == provider.totalQuestion) {
                  Navigator.pushNamed(context, '/quiz-result');
                }
                _onSkip(provider.questionIndex + 1);
              },
              child: const Text("Skip"),
            ),
            ElevatedButton(
              onPressed: () {
                if (provider.questionIndex + 1 == provider.totalQuestion) {
                  Navigator.pushNamed(context, '/quiz-result');
                }
                _choiceSelected == -1
                    ? ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Row(
                          children: const [
                            Icon(
                              Icons.error_outline_outlined,
                              color: Colors.white,
                            ),
                            Gap(4),
                            Text("Please Select An Option")
                          ],
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                        backgroundColor: Colors.deepOrange,
                        duration: const Duration(seconds: 2),
                      ))
                    : _onSubmit(_quizSnapshot?.docs[provider.questionIndex]
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
