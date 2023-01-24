import 'dart:async';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';

import '../quiz_state_provider.dart';

class ProgressBar extends StatefulWidget {
  const ProgressBar({super.key});

  @override
  State<ProgressBar> createState() => _ProgressBarState();
}

class _ProgressBarState extends State<ProgressBar> {
  late Timer _timer;

  void startTimer() {
    _progressValue = 0.0;
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(
      oneSec,
      (Timer timer) {
        setState(() {
          _progressValue += 0.06;
          if (_progressValue >= 1) timer.cancel();
        });
      },
    );
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  double _progressValue = 0.0;
  @override
  Widget build(BuildContext context) {
    final questionIndex = Provider.of<QuizProgress>(context).questionIndex;
    return Column(
      children: [
        Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("$questionIndex/10"),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            const Text('2 / 10 Time '),
            const Gap(4),
            LinearProgressIndicator(
              value: _progressValue,
            ),
          ],
        )
      ],
    );
  }
}
