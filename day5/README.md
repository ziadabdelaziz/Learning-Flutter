# Foundations Cont.
10-2-2024

### 1- Interactive Application
* when building a mobile application we would need it to be interactive (when an action is done there is a response to it).
* to acheive this functionality with flutter to rerender the UI when an action is done, to do so we need to learn about `StatefulWidget`, but before that lest's introduce generic types.


### 2- Generic Types
* generic class is a class that can work with any data type.
* ex. `List` which can be of any type like `List<int>` or `List<double>` or `List<string>`.
* ex.
```
abstract class Map<K, V> {
    //code
    external factory Map();
}
```
* this piece of code represent the map in dart which works with any two data types (key and value).


### 3- StatefulWidget
* using stateful widget we can rerender the UI when the data data which it depends on change.
* let's look at the following code
```
class DiceRoller extends StatefulWidget {
    @override
    State<DiceRoller> createState() {
        return _DicreRollerState();
    }
}

class _DiceRollerState extends State<DiceRoller> {
    @override
    Widget build(context) {
        return //widget tree
    }
}
```
&nbsp; -> `class DiceRoller extends StatefulWidget`: this is how you create a stateful widget instead of stateless widget, as we make our class inherit from `StatefulWidget` class
&nbsp; -> `State<DiceRoller> createState()`: this line of code is overriding the `createState` function provided by `StatefulWidget` class and retuns `State` which is a generic type provided by Flutter, giving it the name of the class as it's type.
&nbsp; -> `class _DiceRollerState extends StatefulWidget`: the `_` (underscore) in the beginning is used to make this class private (not accesable outside it's dart file), it's conventional to use **State** at the end of the class name.
* using stateful widget isn't enough, we need to know about another piece of code, which is `setState((){})` which is provided by `State` class.
* ex.
```
class _DiceRollerState extends State<DiceRoller> {
    var activeDiceImage = 'assets/images/dice-2.png';

    void rollDice(){
        setState((){
            activeDiceImage = 'assets/images/dice-4.png';
        });
    }

    @override
    Wdget build(context) {
        return //widget tree
    }
}
```
* you can see, `setState` accepts an anonymous function as an argument and inside this function we change the value of the variable.
* this way Flutter knows it needs to rerender the UI, which is done by executing the build function again after the state of the app is changed.
