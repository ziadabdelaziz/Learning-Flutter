import 'package:flutter/material.dart';
import 'package:quiz/data/questions.dart';
import 'package:quiz/screens/questions_screen.dart';
import 'package:quiz/screens/start_screen.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Widget? activeScreen;

  @override
  void initState() {
    super.initState();
    activeScreen = StartScreen(switchScreen);
  }

  switchScreen() {
    setState(() {
      activeScreen = QuestionsScreen(
        text: questions[0].text,
        answers: questions[0].answers,
      );
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomLeft,
              colors: [
                Color.fromARGB(255, 100, 13, 151),
                Color.fromARGB(255, 120, 15, 168),
              ],
            ),
          ),
          child: activeScreen,
        ),
      ),
    );
  }
}
