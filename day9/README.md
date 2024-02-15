# Advanced Fundamentals Cont.
15-2-2024

### 1- Accessing List Values
* there is a special notation used to access list items.
* ex. `const hobbies = ['Cooking', 'Reading']`<br>
&nbsp; -> `hobbies[0]` this is how to acceess the first item in the list<br>
&nbsp; -> `hobbies[1]` this is the second list item in the list.<br>
&nbsp; -> `hobbies[2]` gives an **ERROR** since there is not third element in the list.
* in programming we start counting from **zero**, and the item number is called **index**<br>
&nbsp; -> the item of index zero is the first item.

### 2- Accessing Object's Properties and Methods
* let's loot at the following class
```
class Player {
    int health = 100,

    void increaseHealth() {
        this.health += 20;
    }
}

Player player1 = Player();
print(player1.health);
player1.increaseHealth();
print(player1.health);
```
* to access the health value of the object player, you need to use the **dot** notation and the name of the property (the variable inside the class) `player.health`.
* to call the method (function inside the class) `player1.increaseHealth()`.
> *Note: we call variables and functions inside a class properties and methods as the object represents an intity which have properties that descripe it's state and methods that descripe it's actions*


### 3- Abstract Class
* abstract class is a class that contains one or more abstract methods (methods without implementation).
* abstract classes are used to implement the abstract methods in the extended subclasses.
* although you can declare an abstract class that doesn't contain abstract methods.
* abstract classes can't be instantiated.<br>
&nbsp; -> `var iter = Iterable()`: the class `Iterable` is an abstract class, so it can't be instantiated and it will give you an **ERROR**. 

### 4- Interface
* all methods are abstract, doesn't have concrete methods (implemented methods).
* it also can't be instantiated.
* use the `implements` keyword to implement the interface.

### 5- Abstract Class vs Interface
* both of these classes provide abstraction.
* if you have sub-classes that have a common behavior, you should use **abstract class**.
* if you have sub-classes that each have different implementation of the same method, you should use **interface**.

### 6- Iterable
* `Iterable` is a collection of elemnts that can be accessed sequentially.
* it doesn't have the `[]` operator, instead it uses `elementAt()` method which step through each element until it reaches that position.
* used by `for-in` to read elements from an `Iterable` object.

### 7- Mapping List & Spread Operator
* you can create new list from another list using `map()` method.
* let's say we have a list of names `List<String> names = 'ali', 'alaa'` and we want to create a list of `Text` widgets from them to display on the screen.
* to do so we can use `map()` method as follows
```
List<Widget> namesText = names.map((name){
    return Text(name);
}).toList()
```
* `map((x){})` method takes a function as an argument and this inner function takes list item as argument and returns each item after applying this function to them to create a list of transformed items.
* this function returns `Iterable` object which is an super-class of `List` (also an abstract class) so, we cast (change it's type) to `List` with `.toList()`.
* now you have a list of `Text` widgets you can pass them as an argument to `children` parameter of `Column` object.
* if this colum already contains items you would need to give it the items out of the their list, and for that you would use the **spread operator**.
* ex.
```
Column(
    children: [
        Text('Title'),
        ...namesText,
    ]
)
```
* the spread operator `...` before the list gives us it's elements individually.
