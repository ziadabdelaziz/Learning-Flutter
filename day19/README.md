# Interactivity, More Widgets & Theming Cont.
26-2-2024

### 1- Remove spaces from string
* calling `trim()` method on a string object removes the spaces around the text.

### 2- Convert String Number to Numerical Value
* `double.tryParse()` this method takes a string that contains a number and tries to convert it into a `double` (numerical value), it returns the number if it succeeded or `null` if it's non-convertable text.

### 3- Logical Operations
* `&&` operator is used when you have a *boolean* expression that needs all multiple conditions satisfied to evaluate to `true`.
* `||` operator is used when have multiple conditions but needs one to be satisfied at least to evaluate to `true`.
* you can combine multiple conditions, but you should use brackets `()` to be more explicit about the conditions your are compining, otherwise these operations have a specific order to be executed based on it and it might not give you the desired functionality.

### 4- Dialog Box
* you prabably have wan a pop-up dialog box that gives you information in mobile apps.
```
showDialog(
context: context,
builder: (ctx) => AlertDialog(
    title: const Text('Dialog Box Title'),
    content: const Text(
        'This is the Dialog Box content'),
    actions: [
        TextButton(
            onPressed: () {
                Navigator.pop(ctx);
            },
            child: const Text('Okay'),
        ),
    ]),
);
```
* `showDialog` function provided by Flutter display a dialog above the current content when called.
* it similar to `DatePicker` it requires `context` and builder function.
* `AlertDialog` widget shows a dialog box that have title and text and buttons.
* it takes `title` parameter which is the title of the dialog box.
* `content` takes the content under the title.
* `actions` takes a list of widgets (typically a buttons) and display them in the bottom of the box.
