import 'package:expense_tracker/screens/expenses_screen.dart';
import 'package:flutter/material.dart';

class ExpenseTracker extends StatelessWidget {
  const ExpenseTracker({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData().copyWith(
          // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          ),
      home: const Center(
        child: Expenses(),
      ),
    );
  }
}
