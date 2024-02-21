import 'package:expense_tracker/models/expense.dart';

List<Expense> expenses = [
  Expense(
    title: 'Flutter Course',
    amount: 19.9,
    date: DateTime.now(),
    category: Category.work,
  ),
  Expense(
    title: 'Cinema',
    amount: 15,
    date: DateTime.now(),
    category: Category.leisure,
  ),
];
