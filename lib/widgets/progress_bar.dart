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
  var ss = 0;
  var min = 0;
  var hh = 0;

  void startTimer() {
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(
      oneSec,
      (Timer timer) {
        setState(() {
          if (ss < 60) {
            ss++;
          } else {
            ss = 0;
            if (min < 60) {
              min++;
            } else {
              min = 0;
              hh++;
            }
          }
        });
      },
    );
  }

  @override
  void initState() {
    startTimer();
    super.initState();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final questionIndex = Provider.of<QuizProgress>(context).questionIndex;
    final totalQuestion =
        Provider.of<QuizProgress>(context, listen: false).totalQuestion;
    return Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("${questionIndex + 1} | 10"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Icon(Icons.timer),
                    Text(
                        "${hh.toString().padLeft(2, '0')}:${min.toString().padLeft(2, '0')}:${ss.toString().padLeft(2, '0')}"),
                  ],
                ),
              ],
            ),
            const Gap(4),
            LinearProgressIndicator(
              value: (questionIndex.toDouble() + 1) / totalQuestion,
              color: Colors.white,
            ),
          ],
        )
      ],
    );
  }
}
