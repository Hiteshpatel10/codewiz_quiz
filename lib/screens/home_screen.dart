import 'dart:developer';

import 'package:codewiz_quiz/utils/constants.dart';
import 'package:codewiz_quiz/widgets/quiz_logo_card.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:logger/logger.dart';

FirebaseFirestore firestore = FirebaseFirestore.instance;
final logger = Logger();

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    CollectionReference users =
        FirebaseFirestore.instance.collection('Android');

    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Screen"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: quizTopics.length,
          itemBuilder: (BuildContext context, int index) {
            return QuizLogoCard(item: quizTopics[index]);
            // return FutureBuilder<DocumentSnapshot>(
            //   future: users.doc("X8lc4fxV5ThhS07meDpC").get(),
            //   builder: (BuildContext context,
            //       AsyncSnapshot<DocumentSnapshot> snapshot) {
            //     if (snapshot.hasError) {
            //       return Text("Something went wrong");
            //     }

            //     if (snapshot.hasData && !snapshot.data!.exists) {
            //       return Text("Document does not exist");
            //     }

            //     if (snapshot.connectionState == ConnectionState.done) {
            //       Map<String, dynamic> data =
            //           snapshot.data!.data() as Map<String, dynamic>;

            //       return Text(data.toString());
            //     }

            //     return Text("loading");
            //   },
            // );
          },
        ),
      ),
    );
  }
}
