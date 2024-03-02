import 'package:expense_tracker/data/dummy_expenses.dart';
import 'package:expense_tracker/models/expense.dart';
import 'package:expense_tracker/widgets/expenses_list/expenses_item.dart';
import 'package:flutter/material.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({
    super.key,
    required this.onRemoveExpense,
  });

  final Function onRemoveExpense;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: registeredExpenses.length,
      itemBuilder: (ctx, index) {
        final Expense expense = registeredExpenses[index];

        return Dismissible(
          key: ValueKey(expense),
          background: Container(
            color: Theme.of(context).colorScheme.error.withRed(225),
            margin: EdgeInsets.symmetric(
              vertical: Theme.of(context).cardTheme.margin!.vertical - 8,
              horizontal: Theme.of(context).cardTheme.margin!.horizontal - 16,
            ),
          ),
          onDismissed: (direction) {
            onRemoveExpense(expense);
          },
          child: ExpenseItem(expense),
        );
      },
    );
  }
}
