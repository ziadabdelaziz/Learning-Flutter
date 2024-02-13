# Advanced Fundamentals Cont.
13-2-2024

### 1- Rendering Content Conditionally
* ex.: if you want to replace the content on the screen with other content when a button is pressed.
* let's look at the following code
```
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Widget currentText = const Text('initial content');

  switchText() {
    setState(() {
      currentText = const Text('different content');
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
            children: [
                ElevatedButton(
                    onPressed: switchText,
                    child: currentText,
                ),
                currentText,
            ]),
        ),
      );
  }
}

```
* here the initial text rendered is *'initial content'* and when the button is pressed the text changes to *'different content'*, this is done by using `currentText` variable to store the widget we want to render initially and changing it's value to different widget when doing an action like pressing a button.

### 2- Lefting State Up
* if you want to switch between two dependent screens, one of them has the button that triggers the switch to the other.
* to achieve this functionality you can **Lift the State Up** which means controlling the state (the rendered screen) of the app on a higher widget and passing the dependencies to their parameters.
* let's look at the following code
```
class _MyAppState extends State<MyApp> {
  Widget? activeScreen;

  @override
  void initState() {
    super.initState();
    activeScreen = StartScreen(switchScreen);
  }

  switchScreen() {
    setState(() {
      activeScreen = const QuestionsScreen();
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body:  activeScreen,
        ),
    );
  }
}
```
* like the previous example we are using a variable to control the rendered screen, but there are some differences here.
* we need to pass `switchScreen` function to `StartScreen` which contains a button that will call this function when pressed.
* to achieve that we need to know that `switchScreen` function and the variable `activeScreen` are initialized at the same time in this class, so we can't initialize `activeScreen` variable with a value that depends on a function that is initialized at the same time.
* here `initState` comes handy, `initState` is executed before the `build` function which needs the `activeScreen` variable.
* `Widget? activeScreen;` this line initializes the variable to *null* and the `?` operator tells flutter that this variable is nullable (can have a value *null* ).
* then giving the variable it's value inside `initState` function and passing `switchScreen` function to `StartScreen` without any problem.
