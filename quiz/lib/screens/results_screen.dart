import 'package:flutter/material.dart';
import 'package:quiz/data/questions.dart';
import 'package:quiz/models/quiz_question.dart';
import 'package:quiz/widgets/questions_summary.dart';
import 'package:quiz/widgets/start_button.dart';
import 'package:quiz/widgets/title_text.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({
    super.key,
    required this.chosenAnswers,
    required this.onRestart,
  });

  final List<String> chosenAnswers;
  final void Function() onRestart;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    var index = 0;
    for (QuizQuestion question in questions) {
      summary.add({
        'question_index': index,
        'question': question.text,
        'correct_answer': question.answers[0],
        'user_answer': chosenAnswers[index],
        'correct': chosenAnswers[index] == question.answers[0],
      });
      index++;
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final numTotalQuestions = questions.length;
    final numCorrectQuestions = summaryData.where((data) {
      return data['correct'] == true;
    }).length;

    return Padding(
      padding: const EdgeInsets.all(40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TitleText(
            text:
                'You answered $numCorrectQuestions out of $numTotalQuestions questions correctly!',
          ),
          const SizedBox(height: 30),
          QuestionsSummary(summaryData: getSummaryData()),
          const SizedBox(height: 30),
          StartButton(
            icon: Icons.refresh_outlined,
            label: 'Restart Quiz!',
            startQuiz: onRestart,
          ),
        ],
      ),
    );
  }
}
