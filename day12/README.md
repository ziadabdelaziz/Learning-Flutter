# Advanced Fundamentals Cont.
19-2-2024


### 1- Using for Loop in a list
```
final numbers = [5, 6];
for (var i = 0; i < 2; i++){
    print(numbers[i]);
}
```
* the above code iterate over the values in a list have two items.
* `for` keyword is used to identify a for loop.
* this piece of code is executed as follows<br>
&nbsp; step 0: `var i = 0` is executed once at the beginning which declares the variable `i` and initialize it to *0*<br>
&nbsp; step 1: then the code inside the curly braces is executed<br>
&nbsp; step 2: then `i++` which increments `i` by *1* is executed after that<br>
&nbsp; step 3: then checking the condition `i < 2`, if this condition evaluates to `true` we will got to **step 1** then **step 2** and checking the condition again until this condition evaluates to `false` (when `i` value reaches *2* in this case) then we exit the loop.<br>
> *Note: be careful when you write the condition as you may mistakenly write a condition that never evaluate to `false`, then you will never exit the loop and your program may crash*
* there is another variation to this for loop
```
final myList = [
    1,
    2,
    for (final num in numbers)
        num * 2
];
```
* here we added the items inside `numbers` list to `myList` after multiplying each of them by 2.
* we used `for ... in` loop instead (we can use the previous one also).
* `final num in numbers` this notation is used to iterate over items in an **iterable object** (sub-class from `Iterable`) like `List`.
* here we declared a variable `num` where we will store the value of each item in the list and execute the code `num * 2` on them sequentially.


### 2- Type Casting
* let's look at the following example
```
class HardCodedProfile extends StatelessWidget{
    const QuestionsSummary({super.key});

    Map<String, Object> person = {
        'name': 'ziad',
        'age': 21,
    }

    @override
    Widget build(BuildContext context) {
        return Column(
            children: [
                Text(person['name']),
                Text(person['age']),
            ]
        )
    }
}
```
* here this two print functions should output *ziad* then *21*, but it will give us an **ERROR** instead, why is that.
* here we declared the value type as `Object` which can be of any type, altough `Text` widget accepts only `String` values.
* the two lines will cause an **ERROR** even the first one which evaluates to a value to type `String`, because dart have no way to know that.
* so we need to use type casting eastead
```
Text(person['name'] as String),
Text(person['age'] as String),
```
* using `as` keyword to explicitly convert the value into a `String` type which is acceptable by `Text` widget.


### 3- Expanded Widget
* `Expanded` allows it's child to take the available space along the flex widget main axis.
* it restricts it's child widget to the space provided by the parent widget ex.
```
Row(
    children: [
        Column(
            children: [
                Text('.....')
            ]
        )
    ]
)
```
* here the `Row` widget gets all the available width on the screen while the chidren of the `Column` widget takes as mush with as they want.
* this will cause a problem as the children of `Column` widget may need a space bigger than the mobile screen.
* to apply restrictions for the space which can be taken we will wrap the `Column` widget with `Expanded` which will limit the space to the width of the screen as this is the  space it's parent can take.


#### 4- SingleChildScrollView
* this widget allows your content to be scrollable.
* it's useful when the content you want to render on a `Column` or `Row` widget exceeds the space on the mobile screen.
* wrap the column or the row with `SingleChildScrollView` and you will be able to scroll through it's main access.

### 5- RichText
* in case we have a paragraph or a lot of text attached together but you need to change style of different sentences of words in this text separately.
* `RichText` help you acheiving this by providing a `children` parameter which accepts a list of `TextSpan` widgets.
* each `TextSpan` widget can have the text you want to display and the style for this text, then all the widgets are rendered as a single paragraph.
* also there is a `style` property in `RichText` widget which allow us to have a general styling in all `TextSpan` widgets.


### 6- Private Class
```
class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(context) {
    return const Center();
  }
}
```
* this is the stateful widget we have seen before, but why there is an underscore before the class name?
* this underscore tells dart that this is a **private class** which means this class is not accisable outside this dart file/module.
* and this concept can be used not only for classes but also for properties and methods too.
* this feature allow us to specify that this piece of code is meant to be used only inside this file or class and prevent us from using this code any where else, this will be really useful when you have a team working on the same code base.


### 7- getters
* if you have a method in you class that doesn't take parameters and returns a value produced from a class property, you can use **getter** functions instead.
* using `get` keyword before method name.
* accessing the return value will be as if it's a property, ex.
```
class Person {
    final String name = 'Ziad';
    final int birthYear = 2002;

    int getAge() {
        return 2024 - birthYear;
    }

    print(getAge())
}
```
* this is how we call normal methods.
```
class Person {
    final String name = 'Ziad';
    final int birthYear = 2002;

    int get age {
        return 2024 - birthYear;
    }

    print(age)
}
```
* this is the getter function, we treat it as a property and just write it's name to get it's return value.


### 8- Arrow Functions
* when you have functions that only returns a value in a single line of code, you should use arrow functions.
* we can use it in the previous example as foloows:
```
class Person {
    final String name = 'Ziad';
    final int birthYear = 2002;

    int get age => 2024 - birthYear;

    print(age)
}
``` 
* this is the syntax of arrow function, we removed the curly braces and the `return` keyword and used `=>` symbol instead.
* you can see now our code is more concise and looks better.

