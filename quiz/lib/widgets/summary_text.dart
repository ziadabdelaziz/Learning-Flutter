import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SummaryText extends StatelessWidget {
  const SummaryText({
    required this.questionSummary,
    super.key,
  });

  final Map<String, Object> questionSummary;
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: GoogleFonts.cairo(
          fontSize: 14,
          fontWeight: FontWeight.bold,
          height: 1.2,
        ),
        children: [
          TextSpan(
            text: '${questionSummary['question']}\n',
            style: const TextStyle(
              fontSize: 18,
            ),
          ),
          TextSpan(
            text: '${questionSummary['user_answer']}\n',
            style: TextStyle(
              color: questionSummary['correct'] as bool
                  ? Colors.green
                  : Colors.red.shade400,
            ),
          ),
          if (!(questionSummary['correct'] as bool))
            TextSpan(
              text: '${questionSummary['correct_answer']}\n',
              style: TextStyle(color: Colors.cyan.shade300),
            ),
        ],
      ),
    );
  }
}
