# Interactivity, More Widgets & Theming Cont.
29-2-2024

### 1- Assign by Reference
* look at the following piece of code
```
List<String> myList = ['a', 'b', 'c'];
List<String> anotherList = myList;

myList.add('d');

print(myList);
print(anotherList);
```
* the printed values lines are
```
[a, b, c, d]
[a, b, c, d]
```
* this means when we added the character 'd' to `myList` it was added also to `anotherList`?
* when you assign a variable an object, you are referencing the object to another variable.
* which means `myList` have a address where the list is stored at memory, `anotherList` have the same address.
* given that when we do change on either of these variables we are changing the values stored in the same address.
* to have a list in different address similar to another one, you need to use the following code
```
List<String> myList = ['a', 'b', 'c'];
List<String> anotherList = List.from(myList);

myList.add('d');

print(myList);
print(anotherList);
```
* the printed values lines are
```
[a, b, c, d]
[a, b, c]
```
* `List.from(List<E>)` this constructor creates a new list with different address and assign it the values of the passed list.

### 2- ScaffoldMessenger
* `ScaffoldMessenger` is an object provided by Flutter which offers us utility methods that help us controlling the user interface and showing some things on the screen.
```
ScaffolMessanger.of(context).showSnackBar(
    SnackBar(
        duration: Duration(seconds: 3),
        content: Text('Message on the bottom of the screen'),
        action: SnackBarAction(
            label: 'Undo',
            onPressed: (){},
        ),
    ),
);
```
* the above code shows us the utility method `showSnackBar` which takes `SnackBar` object that displays a bar at the bottom of the screen.
* the parameter `duration` takes `Duration` object to specify the time which the snackbar will be displayed on the screen.
* `action` parmeter takes `SnackBarAction` object which is a button that have lable and function to be executed when pressed.
