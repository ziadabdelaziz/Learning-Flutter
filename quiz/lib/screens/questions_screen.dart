import 'package:flutter/material.dart';
import 'package:quiz/data/questions.dart';
import 'package:quiz/widgets/choice_button.dart';

class QuestionsScreen extends StatelessWidget {
  const QuestionsScreen({super.key});

  @override
  Widget build(context) {
    final currentQuestion = questions[0];
    var choicesButtons = currentQuestion.answers.map((answer) {
      return ChoiceButton(choice: answer);
    }).toList();
    
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              currentQuestion.text,
              style: const TextStyle(
                color: Color.fromARGB(255, 206, 183, 247),
                fontSize: 24,
              ),
            ),
            const SizedBox(height: 50),
            ...choicesButtons,
          ],
        ),
      ),
    );
  }
}
