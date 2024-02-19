import 'package:flutter/material.dart';
import 'package:quiz/data/questions.dart';
import 'package:quiz/widgets/choice_button.dart';
import 'package:quiz/widgets/title_text.dart';

class QuestionsScreen extends StatefulWidget {
  final void Function(String answer) onSelectedAnswer;
  const QuestionsScreen({required this.onSelectedAnswer, super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;

  void answerQuestion(String selectedAnswer) {
    widget.onSelectedAnswer(selectedAnswer);
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(context) {
    final currentQuestion = questions[currentQuestionIndex];
    var choicesButtons = currentQuestion.getShuffledAnswers().map((answer) {
      return ChoiceButton(choice: answer, answerQuestion: answerQuestion);
    }).toList();

    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TitleText(
              text: currentQuestion.text,
            ),
            const SizedBox(height: 50),
            ...choicesButtons,
          ],
        ),
      ),
    );
  }
}
