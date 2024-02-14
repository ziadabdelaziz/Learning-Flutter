# Advanced Fundamentals Cont.
14-2-2024

### 1- Flutter Stateful Widget Lifecycle
* there are three main functions executed when dealing with stateful widgets.
* `initState()`: Executed before the `build` method (before the UI is rendered) when the `State` object is **initialized**.
* `build()`: Executed when the widget is rendered for the first time and when `setState()` is called.
* `dispose()`: Executed right before the widget will be deleted.
> *Note: these functions are executed by Flutter automatically, you just override them to achieve specific functionality*

### 2- Tenrary Expression & Comparison Operators
* we used a variable and `initState` to render a widget conditionaly on the screen, there is another way to achieve this without `initState`.
* look at the following code
```
class _MyAppState extends State<MyApp> {
  var activeScreen = 'start-screen';

  switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: activeScreen == 'start-screen'
        ? StartScreen(switchState)
        : const QuestionsScreen(),
        ),
    );
  }
}
```
* here we used *string* as an identifier for each widget, you can use numbers or any values you want.
* now let's look at the following line of code `activeScreen == 'start-screen`<br>
&nbsp; -> the `==` operator is used to check the euqality of two values on it's sides.<br>
&nbsp; -> if the two values are equal the expression after `?` operator is executed and if they are not, the expression after `:` operator is executed.
* this is called a **ternary expression**.
* there is also `??` operator, which executes it's left handside if it's not a null value (*null*, '', "", or not initialized) execute the right handside if it is.
* another way to achieve this
```
class _MyAppState extends State<MyApp> {
  Widget? activeScreen;

  switchScreen() {
    setState(() {
      activeScreen = const QuestionsScreen();
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: activeScreen ?? StartScreen(switchState),
        ),
    );
  }
}
```
* here `StartScreen(switchState)` will be executed initially since `activeScreen` is not initialized (it's value is *null*) and when `switchState` is executed, the `activeScreen` value will be `const QuestionsScreen` and will be executed instead.
> *Note: the first piece of code is better since it descripes what the code will do better (the more descriptive your code is the better)*

### 3- if Statement
* you instead of ternary operator we can use `if` statement to display the desired UI conditionally.
* ex.
```
Widget build() {
    var currentScreen = StartScreen(switchScreen);
    if (activeScreen == 'questions-screen') {
        currentScreen = QuestionsScreen();
    }
    return MaterialApp(
      home: Scaffold(
        body: currentScreen,
        ),
    );
}
```
* here we used another variable to store the widget we want to render on it and changed it's value conditionally using `if` statement, when this condition is met the value of the variable will be `QuestionsScreen()` (when the button is pressed and `setState` is called and the `build` function is executed again).


### 4- Data Model
* since an object is a container of data and logic that controls this data, we can use it to store data in a specific structure.
* ex. if we are working on a quiz app, the main structure in this app is questions, each have a text contains the question and a list of possible answers<br>
&nbsp; -> we can make an object that contians this data ex.
```
class QuizQuestion {
    const QuizQuestion(this.text, this.answers);

    final String text;
    final List<String> answers;
}
```
* with this model we can store text and answers of the question in a structured way and use it in our app.
