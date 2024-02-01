# Foundations Cont.
1-2-2024

---
### 1- Variables
* they are **data containers**
* ex. `var startAlignment = Alignment.topLeft;`<br>
&nbsp; -> this how you store values in variables.<br>
&nbsp; -> `var` is the keyword used when defining a variable.<br>
&nbsp; -> `startAlignment` is the name of the variable (you can name it whatever you want, but try to make it descriptive), notice the naming (first word with lower case-character and words that follows start with upper-case).<br>
&nbsp; -> `=` it's the assignment operator which stores the right handside value into the left handside variable.
* when using `var` keyword you can change the value of the variable later.

### 2- Variables and Types
* each variable have a type.
* when initializing the variable, dart can infer it's type from the value assigned to it.
* but if the variable is declared without assigning a value to it initialy it will be `dynamic`.
* `dynamic` is type changing variable.
* you should specify the type of the variable when declaring it.
* ex. `Alignment? startAlignment`<br>
&nbsp; -> `Alignment` is the type of the variable.<br>
&nbsp; -> `?` this tells dart that this variable can be `NULL` which means it doesn't have a value.

### 3- final & const
* `final` and `const` are keywords to define a variable that it's value doesn't change.
* but there is a difference between them.
* when using `const` you're telling dart that the value stored is a **compile time constant**.<br>
&nbsp; -> which means it's locked-in at the point of time this code is compiled.
* `final` is used when getting a value that is not known at the point this code is compiled (known when the code is executed).<br>
&nbsp; -> ex. `final startAlginment = getAlignment();`<br>
&nbsp; -> the value of the function is not know yet, it needs to be executed to get the value.

### 4- Properties(Instance Variables)
* when we want to make widgets reusables, we would need to use variables to make custom widgets reusable and flexible.
* you would need to pass values to custom widgets instead of using hardcoded values inside your custom widget.
* here comes class properties to help.
* ex.
```
class StyledText extends StatelessWidget {
    StyledText(String text, {super.key}): outputText = text;

    final String outputText;

    @override
    Widget build(context) {
        return Text(
            outputText,
            style: const TextStyle(
                color: Colors.white,
                fontSize:28,
            ),
        );
    }
}
```
* looking at the constructor of the class `StyledText(String text, {super.key}): outputText = text;`.<br>
&nbsp; -> we made the constructor require a positional argument `text` which will be passed when calling the widget as so `StyledText('hello world!')`.<br>
&nbsp; -> then we assign the value passed to the constructor the variable `outputText` which we defined in the class and gave it the type `String` to accept strings only.<br>
&nbsp; -> then used this variable inside `Text` widget, so that we can make our widget reusable.
* also we can acheive this in a more concise and optimized way with the following piece of code instead.
```
class StyledText extends StatlessWidget {
    const StyledText(this.text, {super.key});

    final String text;
    ...
}
```
* here we used the keyword `this` which help us assign the value passed to the constructor into the variable (property) named text in our class.
* adding `final` to the property as it won't be changed inside the class.
* adding `const` to the constructor since this widget won't change once it's initialized (*hence: it can be cached and reused by dart*).
* also you can use named argument but you have to make them required as follows `const StyledText({super.key, required this.text});`<br>
&nbsp; -> `required` keyword enforce passing the argument by giving you an error if you try to call the widget without passing the required argument
