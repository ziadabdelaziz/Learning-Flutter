import 'package:flutter/material.dart';
import 'package:quiz/widgets/start_button.dart';

// ignore: must_be_immutable
class StartScreen extends StatelessWidget {
  StartScreen(this.startQuiz, {super.key});

  void Function() startQuiz;
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(180, 255, 255, 255),
          ),
          const SizedBox(height: 60),
          const Text(
            'Learn Flutter the fun way!',
            style: TextStyle(
              fontSize: 25,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 30),
          StartButton(
            label: 'Start Quiz',
            icon: Icons.arrow_right_alt,
            startQuiz: startQuiz,
          ),
        ],
      ),
    );
  }
}
