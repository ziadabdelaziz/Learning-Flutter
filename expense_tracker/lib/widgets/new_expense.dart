import 'package:flutter/material.dart';
import 'package:expense_tracker/models/expense.dart';

class NewExpense extends StatefulWidget {
  const NewExpense({super.key});

  @override
  State<NewExpense> createState() => _NewExpenseState();
}

class _NewExpenseState extends State<NewExpense> {
  final _titleController = TextEditingController();
  final _amountController = TextEditingController();
  DateTime? _selectedDate;
  Category _selectedCategory = Category.leisure;

  void _presentDatePicker() async {
    final now = DateTime.now();
    final pickedDate = await showDatePicker(
      context: context,
      firstDate: DateTime(now.year - 1),
      initialDate: now,
      lastDate: DateTime(now.year + 1),
    );
    setState(() {
      _selectedDate = pickedDate;
    });
  }

  @override
  void dispose() {
    _titleController.dispose();
    _amountController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        TextField(
          controller: _titleController,
          maxLength: 50,
          keyboardType: TextInputType.text,
          decoration: const InputDecoration(
            label: Text('Title'),
          ),
        ),
        SizedBox(
          width: 150,
          child: TextField(
            controller: _amountController,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              label: Text('Amount'),
              prefixText: '\$ ',
            ),
          ),
        ),
        const SizedBox(height: 24),
        Row(children: [
          DropdownButton(
            value: _selectedCategory,
            items: Category.values
                .map((category) => DropdownMenuItem(
                      value: category,
                      child: Text(category.name.toUpperCase()),
                    ))
                .toList(),
            onChanged: (category) {
              setState(() {
                _selectedCategory = category ?? Category.leisure;
              });
            },
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(_selectedDate == null
                    ? 'No date selected'
                    : formatter.format(_selectedDate!)),
                IconButton(
                  onPressed: _presentDatePicker,
                  icon: const Icon(
                    Icons.calendar_month,
                    size: 30,
                  ),
                )
              ],
            ),
          ),
        ]),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(
              onPressed: () {
                _titleController.clear();
                _amountController.clear();
              },
              child: const Text('Cancel'),
            ),
            const SizedBox(width: 10),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Save Expense'),
            ),
          ],
        )
      ]),
    );
  }
}
