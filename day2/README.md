# Foundations Cont.
31-1-2024

Starting with the previos example:

```
void main(){
    runApp(
        MaterialApp(
            home: Scaffold(
                body: Container(
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(
                            colors: [
                                Color.fromARGB(255, 26, 2, 80),
                                Color.fromARGB(255, 45, 7, 98),
                            ],
                        ),
                    ),
                    child: const Center(
                        child: Text('Hello World!'),
                    ),
                ),
            ),
        ,)
    );
}
```

### 1- How to Cinfigure Widgets & Objects
* you can change other arguments to change the settings of the Widget
* ex. specify **begin** and **end** arguments of **LinearGradient** object<br>
```
begin: Alignment.topLeft,
end: Alignment.bottomRight,
```
* you can know about the values that can be passed to the arguments by looking at documentation or clicking `ctrl+space` to see the list of suggestions.


### 2- Styling Text
```
Text(
    'Hello World!',
    style: TextStyl(
        color: Colors.white,
        fontSize: 28,
    ),
),
```

### 3- Custom Widgets
* you need to make a reusable widgets that can be used in different parts in you app
* this helps in code readability and flixability

### 4- Understanding Classes
* Dart is an Object Oriented Language
* there are primtive values like **Text** and **Numbers**
* also there are more complex values and these values are called Objects (ex. BoxDecoration, LinearGradient and Container)
* these objects are created based on blueprints **(Classes)**
* **Objects** are data structures which contains<br> 
&nbsp; -> Variables/Properties.
&nbsp; -> Functions/Methods

### 5- Building Custom Widget
* using `class` keyword, ex.
```
class GradientContainer extends StatelessWidget {
    @override
    Widget build(context){
        return Container(
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        colors: [
                            Color.fromARGB(255, 26, 2, 80),
                            Color.fromARGB(255, 45, 7, 98),
                        ],
                    ),
                ),
                child: const Center(
                    child: Text('Hello World!'),
                ),
            ),
    }
}
```
* notice the naming of the class, each word in the class name is capitalized and not separated.
* `extend` keyword is used for inheriting values and methods from the class after it (ex. `StatelessWidget`) to the created class.
* inheriting from `StatelessWidget` adds alot of logic and data required by flutter to use this class as a widget.
* extending this class alos comes with requirements.
* `@override` keyword that makes it clear that you are overriding the method following it.
* `StatelessWidget` class requirs `Widget build(context) {}` which is a build method that returns a widget.
* build required `context` parameter passed which gives flutter importation imformation about the position of this widget in the widget tree.
* `return` keyword returns the custom widget you want flutter to render on the screen.
* now we can use this custom widget like so:
```
void main(){
    runApp(
        MaterialApp(
            home Scaffold(
                body: GradientContainer(),
            )
        )
    )
}
```
* you can see now how the code became more clean.
