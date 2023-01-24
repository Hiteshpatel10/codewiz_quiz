import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:codewiz_quiz/screens/home_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';

final question = FirebaseFirestore.instance.collection('Android');

class Text1 extends StatefulWidget {
  const Text1({super.key});

  @override
  State<Text1> createState() => _Text1State();
}

class _Text1State extends State<Text1> {
  @override
  void initState() {
    getQuestions();
    super.initState();
  }

  getQuestions() {
    question.get().then((QuerySnapshot snapshot) {
      snapshot.docs.forEach((DocumentSnapshot doc) {
        print("hellow ");
        print(doc.data());
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
