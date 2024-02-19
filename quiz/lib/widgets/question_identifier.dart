import 'package:flutter/material.dart';

class QuestionIdentifier extends StatelessWidget {
  const QuestionIdentifier({
    super.key,
    required this.isCorrect,
    required this.questionNumber,
  });

  final bool isCorrect;
  final String questionNumber;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color:
            isCorrect ? Colors.green : Colors.red,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Text(
        questionNumber,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 30, 28, 34),
        ),
      ),
    );
  }
}
