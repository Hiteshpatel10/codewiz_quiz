import 'package:codewiz_quiz/utils/constants.dart';
import 'package:codewiz_quiz/widgets/quiz_logo_card.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:logger/logger.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';

FirebaseFirestore firestore = FirebaseFirestore.instance;
final logger = Logger();
List<dynamic> myList = [];

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    OneSignal.shared.setLogLevel(OSLogLevel.debug, OSLogLevel.none);
    OneSignal.shared.setAppId("debf41fc-f14f-45ff-9d19-024661a678f6");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Dashboard",
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: quizTopics.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
                onTap: () {
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
