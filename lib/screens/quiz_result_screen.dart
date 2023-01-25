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
        bottom: PreferredSize(
            preferredSize: const Size.fromHeight(50),
            child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                child: Row(
                  children: const [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(left: 32.0),
                        child: Text(
                          "Text",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                        ),
                      ),
                    ),
                    Icon(
                      Icons.filter_alt_off_rounded,
                      size: 32.0,
                    )
                  ],
                ))),
      ),
      body: Column(children: [
        Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Correct Answer : ${provider.correct}"),
                  Text("Skipped : ${provider.questionSkipped}"),
                  Text("Total Questions: ${provider.questionIndex}")
                ]),
          ),
        )
      ]),
    );
  }
}
