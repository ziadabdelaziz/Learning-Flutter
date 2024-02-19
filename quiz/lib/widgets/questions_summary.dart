import 'package:flutter/material.dart';
import 'package:quiz/widgets/question_identifier.dart';
import 'package:quiz/widgets/summary_text.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary({
    required this.summaryData,
    super.key,
  });
  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 450,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: summaryData.map(
            (data) {
              final questionNumber =
                  ((data['question_index'] as int) + 1).toString();
              final isCorrect = data['correct'] as bool;
              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  QuestionIdentifier(
                    isCorrect: isCorrect,
                    questionNumber: questionNumber,
                  ),
                  const SizedBox(width: 15),
                  Expanded(
                    child: SummaryText(questionSummary: data),
                  ),
                ],
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
