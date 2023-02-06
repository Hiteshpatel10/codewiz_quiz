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

  void startTimer(QuizProgress provider) {
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(
      oneSec,
      (Timer timer) {
        if (provider.ss < 60) {
          provider.ss++;
        } else {
          provider.ss = 0;
          if (provider.mm < 60) {
            provider.mm++;
          } else {
            provider.mm = 0;
            provider.hh++;
          }
        }
      },
    );
  }

  @override
  void initState() {
    super.initState();
    Future.microtask(() async {
      final provider = Provider.of<QuizProgress>(context, listen: false);
      startTimer(provider);
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<QuizProgress>(context);

    return Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                    "${provider.questionIndex + 1} | ${provider.totalQuestion.toInt()}"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Icon(Icons.timer),
                    Text(
                        "${provider.hh.toString().padLeft(2, '0')}:${provider.mm.toString().padLeft(2, '0')}:${provider.ss.toString().padLeft(2, '0')}"),
                  ],
                ),
              ],
            ),
            const Gap(4),
            LinearProgressIndicator(
              value:
                  (provider.questionIndex.toDouble()) / provider.totalQuestion,
              color: Colors.white,
            ),
          ],
        )
      ],
    );
  }
}
