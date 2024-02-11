import 'package:flutter/material.dart';
import 'package:quiz/start_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(context) {
    return  MaterialApp(
      home: Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomLeft,
            colors: [
              Colors.deepPurple.shade700,
              Colors.deepPurple,
            ],
          ),
        ),
        child: const StartScreen(),
      ),),
    );
  }
}
