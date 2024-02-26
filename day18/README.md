# Interactivity, More Widgets & Theming Cont.
26-2-2024

### 1- Closing ModelBottomSheet
* `Navigator.pop()`
* the `Navigator` class provided by Flutter is help us to navigate between multiple screens.
* calling the `pop` method will close the `ModalBottomSheet` if it's currently open.

### 2- Date Picker
* there are alot of applications that requires dealing with dates and registering data with it's date.
```
void _presentDatePicker() async {
    final now = DateTime.now();
    final pickedDate = await showDatePicker(
        context: context,
        firstDate: DateTime(now.year - 1),
        initialDate: now,
        lastDate: DateTime(now.year + 1),
    );
}
```
* this is how we can get can render a date by the function `showDatePicker` provided by Flutter.
* you can access year, month and day of `DateTime` object.
* `showDatePicker` returns a value of type `Future<DateTime>`.
* we will talk later about `Future` object, but for now you can think of it as a value that will be returned in the future.
* the `await` keyword is used whenever we want to store a `Future` object value in the future and it's only usable within an asyncronus function which is declared with `async` keyword (also we will talk about it later).

### 3- Exclamation Mark (!)
* putting `!` after a nullable variable we tell dart that this will never be null.
* when we have a nullable variable passed to a function which required a non-nullable variable but we are sure this value won't be null when this piece of code is executed.

### 4- Drop Down Button
* you probably have seen an application where you choose from a drop down menu, to add this option in your Flutter app you can use `DropdownButton` widget.
```
List<String> cities = ['Damietta', 'Cairo', 'Aswan'];
String selectedCity = 'Damietta';
DropdownButton(
    value: selectedCity,
    items: cities.map((city) => DropdownMenuItem(
        value: city,
        child: Text(city)
    )).toList(),
    onChange (value){
        setState((){
            selectedCity = value ?? 'Damietta';
        });
    }
)
```
* `items` parameter takes a value of type `List<DropdownMenuItem>`.
* the `value` parameters takes the value that will be displayed on the button.
* in the above code we used `map` function to map our values into a list of `DropdownMenuItem` values.
* `onChange` paremter accepts a function which take an argument that is the selected value from the drop down menu<br>
&nbsp; -> here we stored this value in `selectedCity` variable which will be displayed on the button.<br>
&nbsp; -> we covered the case of the user not selecting a value by assigning the value `Damietta` if `value` is null.<br>

---

## Extras

### 1- TextField Spacing
* `TextField` takes as much space as it can, so be careful when placing it inside `Row` widget.

### 2- String methods
* `toUpperCase()`: you can use this method to display your text in Upper case.
