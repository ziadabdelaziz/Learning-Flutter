# Interactivity, More Widgets & Theming Cont.
24-2-2024

### 1- Injecting a Variable into String
* string values are wraped with quotes `''` or douple quotes `""` like this `String text = 'this is a string value';`.
* what if we want to insert a another string value inside this one.
```
String innerText = 'inner text';
String text = 'this is $innerText inside this text';
```
* using dollar sign `$` before the variable name allow us to use it's value inside the quotes.
* if we have more complex expression that evaluates to string we put it inside curly braces after the dolar sign `${}`.
* what if we need to use the dollar sign as string?<br>
&nbsp; -> we put back-slash before the dollar sign `\$`, and the same thing goes for the back-slash `\\`.

### 2- Spacer
* this wiget takes all the space it can get.
* it can be very useful for spacing items inside `Column` or `Row` wiget, as you might want to gave some widget on the left and others on the right and leave space in the middle.

### 3- Formatting DateTime Values
* `DateTime` is an object in flutter that can be used when working with date and time in your application.
* the formating of date and time is a bit tedious, so we use a package to format it for us.
* `intl` package provide alot of formats each have a different constructor.
```
DateTime currentMoment = DateTime.now();
final formatter = DateTime.yMd();
String text = 'today is ${formatter.format(currentMoment)}';
```
* in the above code we did as follows<br>
&nbsp; -> `currentMoment` stored a value that represents the exact date and time when this code is executed of type `DateTime`<br>
&nbsp; -> `formatter` store `DateTime` object with the constructor we choose (there are many other constructors with differnt formats) to formate our date<br>
&nbsp; -> then we called `format()` method and passed it `DateTime` value which returns a formatted `String`.

### 4- AppBar
* most of the mobile applications use have an app bar on the top of the screen.
* for that Flutter provided us with an easy way to make an app bar instead of making a custom widget.
* `Scaffold` widget have a parameter called `appBar` which accepts `AppBar` object.
* `AppBar` have parameters like `title`, `action` and more to help use customize our app bar.
```
Scaffold(
    appBar: AppBar(
        title: const Text('Flutter Expense Tracker'),
        actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.add),
            )
        ],
    ),
)
```
* this is an example of an app bar with a title on the lift side and a button on the right side.
 