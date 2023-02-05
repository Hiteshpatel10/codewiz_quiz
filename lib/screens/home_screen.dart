import 'package:codewiz_quiz/utils/constants.dart';
import 'package:codewiz_quiz/widgets/quiz_logo_card.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:logger/logger.dart';

FirebaseFirestore firestore = FirebaseFirestore.instance;
final logger = Logger();
List<dynamic> myList = [];

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Screen"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: quizTopics.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
                onTap: () {
                  // Navigator.of(context)
                  //     .pushNamed('/quiz', arguments: quizTopics[index]['name']);
                  Navigator.of(context).pushNamed('/quiz-options',
                      arguments: quizTopics[index]['name']);
                },
                child: QuizLogoCard(item: quizTopics[index]));
          },
        ),
      ),
    );
  }
}
