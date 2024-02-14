import 'package:flutter/material.dart';
import 'package:quiz/widgets/choice_button.dart';

class QuestionsScreen extends StatelessWidget {
  QuestionsScreen({required this.text, required this.answers, super.key});

  final String text;
  final List<String> answers;
  @override
  Widget build(context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              text,
              style: const TextStyle(
                color: Color.fromARGB(255, 206, 183, 247),
                fontSize: 24,
              ),
            ),
            const SizedBox(height: 50),
            ChoiceButton(choice: answers[0]),
            ChoiceButton(choice: answers[1]),
            ChoiceButton(choice: answers[2]),
            ChoiceButton(choice: answers[3]),
          ],
        ),
      ),
    );
  }
}
