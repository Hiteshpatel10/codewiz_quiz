import 'package:codewiz_quiz/utils/constants.dart';
import 'package:codewiz_quiz/widgets/option_level_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';
import '../quiz_state_provider.dart';

class QuizOptionScreen extends StatefulWidget {
  final String topic;
  const QuizOptionScreen({required this.topic, super.key});

  @override
  State<QuizOptionScreen> createState() => _QuizOptionScreenState();
}

class _QuizOptionScreenState extends State<QuizOptionScreen> {
  var sliderVal = 5.0;

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<QuizProgress>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Options"),
        centerTitle: true,
      ),
      body: Column(
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
          const Gap(12),
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
          )
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
        child: ElevatedButton(
          child: const Text(
            "start quiz",
            style: TextStyle(fontSize: 18),
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/quiz',
                arguments: [widget.topic, provider.quizLevel]);
          },
        ),
      ),
    );
  }
}
