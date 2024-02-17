import 'package:flutter/material.dart';

class ChoiceButton extends StatelessWidget {
  final String choice;
  final void Function(String answer) answerQuestion;

  const ChoiceButton({
    super.key,
    required this.choice,
    required this.answerQuestion,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          foregroundColor: Colors.white,
          backgroundColor: const Color.fromARGB(255, 57, 7, 114),
        ),
        onPressed: () {
          answerQuestion(choice);
        },
        child: Text(choice, textAlign: TextAlign.center),
      ),
    );
  }
}
