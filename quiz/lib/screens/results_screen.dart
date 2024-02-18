import 'package:flutter/material.dart';
import 'package:quiz/data/questions.dart';
import 'package:quiz/models/quiz_question.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({
    super.key,
    required this.chosenAnswers,
  });

  final List<String> chosenAnswers;

  // List<Map<String, Object>> getSummaryData() {
  //   final List<Map<String, Object>> summary = [];

  //   for (QuizQuestion question in questions) {
  //     summary['question'] = 
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Answerd x out of y correctly!'),
            const SizedBox(height: 30),
            const Text('List of answers and questions...'),
            const SizedBox(height: 30),
            TextButton(
              onPressed: () {},
              child: const Text('Restart Quiz'),
            )
          ],
        ),
      ),
    );
  }
}
