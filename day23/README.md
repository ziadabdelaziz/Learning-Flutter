# Interactivity, More Widgets & Theming Cont.
3-3-2024

### 1- Create Ulternative constructor
* you may encounter some cases where you need use the same class but with different parameters.
* for that you can create another constructor for that class to fill your desire.
```
class ExpenseBucket {
  const ExpenseBucket({
    required this.category,
    required this.expenses,
  });

  ExpenseBucket.forCategory(List<Expense> allExpenses, this.category)
      : expenses = allExpenses
            .where((expense) => expense.category == category)
            .toList();

  final Category category;
  final List<Expense> expenses;

  double get totalExpense {
    double sum = 0;

    for (final expense in expenses) {
      sum += expense.amount;
    }

    return sum;
  }
}
```
* in the above code another constructor was created by typing the class name and a dot followed by the constructor name `ExpenseBucket.forCategory`.
* we used ulternative constructors alot in our widgets now we are creating our own.

### 2- MediaQuery
* `MediaQuery` is a built in class provided by Flutter that can give us some information about the device which the our app is working on.
* it's very helpful when we want our design to be compatible on any device (there are more information about it in the next chapter).


### Summary
* show **snack bar** in our app.
* show **modal bottom sheet**.
* show **date picker**.
* show **dialog**.
* handling user input with `TextEditingController`.
* learned about new widgets like<br>
&nbsp; -> `AppBar`<br>
&nbsp; -> `IconButton`<br>
&nbsp; -> `Dismissable`<br>
&nbsp; -> `ListView`<br>
* Learned about theming your application.
* and much more.
