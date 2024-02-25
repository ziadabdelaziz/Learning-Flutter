# Interactivity, More Widgets & Theming Cont.
23-2-2024

### 1- Context
* you have seen `build` function which requires an argument of type `BuildContext` which we call it **context**.
* you can think of this **context** as an object that contains information about the widgets required by Flutter to render this widget on the screen.
* most importantly, the **context** object holds information about the <u>position of the widget</u> in the widget tree.
* this is why you see **context** required by builder functions for rendering in Flutter.

### 2- Modal Sheet
* you probably have seen in mobile apps a sheet that appears from the bottom of the screen.
* Flutter provide us with this feature using `showModalBottomSheet` function as follows
```
showModalBottomSheet(
    context: context,
    builder: (ctx) => Text('This is a modal bottom sheet');
)
```
* calling this function will make the bottom sheet appear on the screen with the returned widget inside of it and the content behind it appears faded.
* `showModalBottomSheet` is a builder function that requires **context** parameter and build function that returns the widget inside of the sheet.

### 3- User Text Input
* Flutter provides us with a widget that can accept user input called `TextField`.
```
class _NewExpenseState extends State<NewExpense> {
    var _enteredTitle = '';

    void _saveTitileInput(String inputValue) {
        _enteredTitle = inputValue;
    }

  @override
  Widget build(BuildContext context) {
    return TextField(
        onChange: _saveTitleInput,
        maxLength: 50,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
            label: Text('Title'),
        )
    );}
}
```
* let's discuss each piece of code separately<br>
&nbsp; -> `onChange` parameter accepts a function with a `String` type parameter which is the input value of the user, this function is called each time the user changes the input, this way we can use the input provided by the user and store it in a variable in order to use it in our code.<br>
&nbsp; -> `maxLength` parameter let us put a limitation the maximum number of characters the user can use in the input.<br>
&nbsp; -> `keyboardType` let us specify the type of input the user can use, text is the default, you can make it numbers or email or others<br>
&nbsp; -> to let the user know what information should be provided we need to provide a label, for that we used `decoration` parameter which takes `InputDecoration` object that have the `label` parameter, `InputDecoration` object provides us with multiple customization options.

### 4- TextEditingController
* there is an alternative way to store the user input using `TextEditingController` object
```
class _NewExpenseState extends State<NewExpense> {
  final _titleController = TextEditingController();

  @override
  void dispose() {
    _titleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
        controller: _titleController,
        maxLength: 50,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
            label: Text('Title'),
        ));
    }
}

print(_titileController.text);
```
* instead of having a variable and function for each input, using `controller` parameter and passing `TextEditingController` object which is provided by flutter is more concise.
* but this object will keep working on the background even if the rendered UI has changed to differnt screen that doesn't require it<br>
&nbsp; -> for that we use `dispose` function that is executed when the rendered UI is disposed and call the `dispose` method on the controller to end it.
* the `text` parameter of the controller stores the string value of the input.
