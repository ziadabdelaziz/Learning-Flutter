# Interactivity, More Widgets & Theming
21-2-2024

### 1- uuid package
* package used to generate **unique ids**.
* ex.
```
import 'package:uuid/uuid.dart';

const uuid = Uuid();

class Person {
    Person() : id = uuid.v4();

    final String id;
}
```
* in the above code we called the `Uuid()` object from the package, then used it inside the constructor.
* `Person() : id = uuid.v4();` this is a concise syntax to initialize a variable explicitly inside a constructor, using the `:` symbol after the brackets then giving the variables it's values and if you want to initialize more than one variable you can separate them with comma.
* we called `v4()` method which is a type of unique ids and stored it's value in `id` variable.


### 2- Enum
* this is a data type that can help us restrict the allowed values in our code.
```
enum Category { food, travel, leisure, work }
```
* this is how you initialize an **enum**.
* they look like string but they are not wraped with quotes(`''`).
* we can use `Category` now as a custom type of a variable like `final Category category = Category.food`<br>
&nbsp; -> here we are declaring a variable with type `Category`.<br>
&nbsp; -> then assigning it the value `Category.food` which refers to the first value in `Category` Object.
* this can be useful in comparisons to prevent comparing strings which may contain typos or numbers which are not describtive in our code.
```
if (category == Category.food) {
    print('this is food');
}
```
* you can see here we didn't use strings or numbers and the code is describtive and clean.
