import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:codewiz_quiz/utils/constants.dart';
import 'package:codewiz_quiz/widgets/option_level_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';
import '../firestore/models/questions.dart';
import '../quiz_state_provider.dart';

class QuizOptionScreen extends StatefulWidget {
  final String topic;
  const QuizOptionScreen({required this.topic, super.key});

  @override
  State<QuizOptionScreen> createState() => _QuizOptionScreenState();
}

class _QuizOptionScreenState extends State<QuizOptionScreen> {
  var sliderVal = 5.0;
  QuerySnapshot? _quizSnapshot;

  Future getQuestions(String level) async {
    final provider = Provider.of<QuizProgress>(context, listen: false);
    provider.questionList = [];
    await FirebaseFirestore.instance
        .collection(widget.topic)
        .where('level', isEqualTo: provider.quizLevel)
        .get()
        .then((snapshot) {
      if (snapshot.docs.isEmpty) return false;
      setState(() {
        _quizSnapshot = snapshot;
        provider.questionList = _quizSnapshot!.docs
            .map((doc) =>
                QuizQuestionModel.fromMap(doc.data() as Map<String, dynamic>))
            .toList();

        provider.questionList.shuffle();
        provider.questionList.sublist(0, provider.totalQuestion.toInt());
      });
    });
    provider.isLoading = false;
    return provider.questionList.isEmpty ? false : true;
  }

  void navigateToQuiz() {
    Navigator.popAndPushNamed(context, '/quiz',
        arguments: [widget.topic, 'level']);
  }

  void notFetchMessage() {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Row(
        children: const [
          Icon(
            Icons.error_outline_outlined,
            color: Colors.white,
          ),
          Gap(4),
          Text("Sorry, Unable to fetch questions"),
        ],
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      backgroundColor: Colors.deepOrange,
      duration: const Duration(seconds: 2),
    ));
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<QuizProgress>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Options"),
        centerTitle: true,
      ),
      body: provider.isLoading == true
          ? const Center(child: CircularProgressIndicator())
          : Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(quizLevel.length, (index) {
                        return OptionLevelWidget(
                          icon: quizLevel[index]['icon'],
                          level: quizLevel[index]['level'],
                        );
                      }),
                    ),
                  ),
                  const Gap(16),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(children: [
                        Text(
                          provider.totalQuestion.toInt().toString(),
                          style: const TextStyle(fontSize: 24),
                        ),
                        Slider(
                          min: 5.0,
                          max: 20.0,
                          value: provider.totalQuestion,
                          onChanged: (value) {
                            setState(() {
                              provider.totalQuestion = value;
                            });
                          },
                        ),
                        const Text(
                          "Select The Number Questions",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ]),
                    ),
                  )
                ],
              ),
            ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
        child: ElevatedButton(
          child: const Text(
            "start quiz",
            style: TextStyle(fontSize: 18),
          ),
          onPressed: () async {
            provider.reset = 0;
            provider.isLoading = true;
            bool result = await getQuestions(provider.quizLevel);
            result == true ? navigateToQuiz() : notFetchMessage();
          },
        ),
      ),
    );
  }
}
