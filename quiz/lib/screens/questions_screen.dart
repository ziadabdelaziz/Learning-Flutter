import 'package:flutter/material.dart';
import 'package:quiz/widgets/choice_button.dart';

class QuestionsScreen extends StatelessWidget {
  const QuestionsScreen({super.key});

  @override
  Widget build(context) {
    return const Center(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'What are the main building blocks of Flutter UIs?',
              style: TextStyle(
                color: Color.fromARGB(255, 206, 183, 247),
                fontSize: 24,
              ),
            ),
            SizedBox(height: 50),
            ChoiceButton(choice: 'Functions'),
            ChoiceButton(choice: 'Components'),
            ChoiceButton(choice: 'Blocks'),
            ChoiceButton(choice: 'Widgets'),
          ],
        ),
      ),
    );
  }
}
