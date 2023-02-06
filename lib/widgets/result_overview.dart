import 'package:flutter/material.dart';

class ResultOverView extends StatelessWidget {
  final String heading;
  final String value;
  const ResultOverView({required this.heading, required this.value, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(heading, style: const TextStyle(fontWeight: FontWeight.w700)),
          Text(value, style: const TextStyle(fontWeight: FontWeight.w500))
        ],
      ),
    );
  }
}
