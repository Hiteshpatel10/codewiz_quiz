import 'package:flutter/material.dart';

class QuizOptionWidget extends StatelessWidget {
  final bool isSelected;
  final int index;
  final String option;
  const QuizOptionWidget(
      {required this.isSelected,
      required this.index,
      required this.option,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          flex: 1,
          child: Card(
            color: isSelected ? Colors.white70 : Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Center(
                child: Text(
                  "$index.",
                  style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 7,
          child: Card(
            color: isSelected ? Colors.white70 : Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  option,
                  style: const TextStyle(fontSize: 16, color: Colors.black),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
