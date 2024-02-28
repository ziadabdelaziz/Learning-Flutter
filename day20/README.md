# Interactivity, More Widgets & Theming Cont.
28-2-2024

### 1- EdgeInsets.fromLRTB()
* for use the `EdgeInsets` object when we want to add padding or margin.
* `fromLRTB()` constructor takes 4 parameters which represent the spaces in the 4 directions ordered [left, right, top, bottom].

### 2- Prevent Keyboard from Overlaping on Content in ModalBottomSheet
* there is a parameter called `isScrollControlled` in the `showModalBottomSheet` method which will make the sheet take the full available hight.

### 3- Dismiss widget
* it's common in mobile application that you swipe a tile on the screen to remove it.
* since it's a common behavior, Flutter provided `Dismissible` widget that achieve this functionality.
```
Dismissible(
    key: ValueKey(expenses[index]),
    onDismissed: (direction) {
        registeredExpenses.removeAt(index);
    },
    child: ExpenseItem(expenses[index]),
);
```
* the `key` parameter requires `ValueKey` object which we saw passed from super class `super.key` as a required parameter in widgets' constructor.
&nbsp; -> the **key** is a unique identifier that help Flutter recongnize the widget and it's data from others similar to it, as you might have multiple widget from the same `class` but different data inside them.
* `onDismissed` takes a function that takes an argument of type `DismissDirection` which represent the direction in which the widget was swiped.
* `child` takes the widget that will be dismissed.
