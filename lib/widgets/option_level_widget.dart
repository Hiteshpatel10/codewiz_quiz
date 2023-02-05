import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';

import '../quiz_state_provider.dart';

class OptionLevelWidget extends StatefulWidget {
  final String icon;
  final String level;
  const OptionLevelWidget({required this.icon, required this.level, super.key});

  @override
  State<OptionLevelWidget> createState() => _OptionLevelWidgetState();
}

class _OptionLevelWidgetState extends State<OptionLevelWidget> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<QuizProgress>(context);

    return GestureDetector(
      onTap: () {
        provider.quizLevel = widget.level;
      },
      child: Card(
        color:
            widget.level == provider.quizLevel ? Colors.white38 : Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Image.asset(
                widget.icon,
                width: 100,
              ),
              const Gap(4),
              Text(
                widget.level,
                style: const TextStyle(fontWeight: FontWeight.w700),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
