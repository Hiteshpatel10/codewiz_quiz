import 'package:codewiz_quiz/utils/constants.dart';
import 'package:flutter/material.dart';

class QuizLogoCard extends StatelessWidget {
  final Map<String, dynamic> item;
  const QuizLogoCard({required this.item, super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.white,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            children: [
              Center(
                child: Image.asset(
                  item['icon'],
                  width: 80,
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    ShaderMask(
                      shaderCallback: (Rect bounds) {
                        return LinearGradient(
                          colors: titleColor[item['name']]!,
                          tileMode: TileMode.mirror,
                        ).createShader(bounds);
                      },
                      child: Text(
                        item['name'],
                        style: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    for (var it in item['questions'])
                      ShaderMask(
                        shaderCallback: (Rect bounds) {
                          return LinearGradient(
                            colors: levelColors[it['name']]!,
                          ).createShader(bounds);
                        },
                        child: Card(
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.horizontal(
                              left: Radius.circular(20),
                              right: Radius.circular(10),
                            ),
                          ),
                          margin: EdgeInsets.zero,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(children: [
                              Text(it['name']),
                              const Spacer(),
                              Text(it['questions'])
                            ]),
                          ),
                        ),
                      )
                  ],
                ), // Text widget
              ),
            ],
          ),
        ));
  }
}
