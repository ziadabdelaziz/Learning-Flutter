# Interactivity, More Widgets & Theming Cont.
2-3-2024

### 1- Theming
* Flutter provides us with a way to setup the entire application theme.
* `MaterialApp` is the root widget of our app, it has a the `theme` parameter which takes `ThemeDate()` object that have alot of helpful peremeters to adjust the theme of the application.
* Flutter theming system is very powerful and flexible, but there are alot of parmeters that aren't used any more and there are better ways to adjust our application theme.
* keep in mind when you provide the `theme` parameter with `ThemeDate()` object with some parameters specified, you are removing the default theme in Flutter and to prevent that you should pass `ThemeDate().copyWith()` and use change the paremters you want, this way you customise what you want and keep every other thing as it is.

### 2- Setting & Using Color Scheme
* when it comes to colors there are alot of parameters in the `ThemeData` class that involve chaning colors.
* Flutter allows you to setup some base color like *primary* or *accent* color that can be used general, besides that you can setup individual color like *Scaffold* background color or entire sub-theme like the *elevanted button* theme.
* **Color Scheme** is the easiest approach of applying colors to many widgets instead manually set a bunch of colors individually using.
* using `colorScheme` parameter that takes `ColorScheme()` object which have a `fromSeed()` constructor that will create differnt shades of colors based on one base color.
```
var kColorScheme = ColorScheme.fromSeed(
    seedColor: const Color.fromARGB(255, 96, 59, 181),
);

MaterialApp(
    theme: ThemeData().copyWith(
        colorScheme: kColorScheme,
        appBarTheme: AppBarTheme().copyWith(
            backgroundColor: kColorScheme.onPrimaryContainer,
            foregroundColor: kColorScheme.primaryContainer,
        ),
        textTheme: ThemeData().textTheme.copyWith(
            titleLarge: TextStyle(
                fontWeight: FontWeight.bold,
                color: kColorScheme.onSecondaryContainer,
                fontSize: 16,
            ),
        ),
    ),
    home: const Center(
        child: Container(
            color: color: Theme.of(context).colorScheme.error.withRed(225),
            child: Text(
                expense.title,
                style: Theme.of(context).textTheme.titleLarge,
            ),
        ),
    ),
);
```
* here we created a the `ColorScheme` object then passed it to the `colorScheme` paramerter.
* changed the *app bar* theme using `appBarTheme` parameter which takes `AppBarTheme` object.
* we want to change the background and foreground of the app bar only, so we used `copyWith()` constructor the change them and keep every other theme as it is.
* `ColorScheme` object have alot of attributes that you should try, here we used `onPrimaryContainer` and `primaryContainer` attributes which are colors generated from the base color we provided to `seedColor` parameter in `ColorScheme` object.
* be careful when specifying themes as you may setup two different themese for the intersecting widgets and don't get the result you desire.
* since we specified our theme, it can be used any widget by using the `Theme` class which needs the *context* and have our themes as attributes.
* notice how we used `colorScheme`, there a lot of attributes worth checking like `error` which gives us a dark red color, also colors can be altered, here we used `withRed()` method to change the redness of our color.

### 3- Dark Theme
* to appy dark mode according to the user prefered system mode, Flutter provides us with an easy way to do so
```
var kColorScheme = ColorScheme.fromSeed(
    seedColor: const Color.fromARGB(255, 96, 59, 181),
);

var kDarkColorScheme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: const Color.fromARGB(255, 5, 99, 125),
);

MaterialApp(
    darkTheme: ThemeData.dark().copyWith(
        colorScheme: kDarkColorScheme,

    )
    theme: ThemeData().copyWith(
        colorScheme: kColorScheme,
        appBarTheme: AppBarTheme().copyWith(
            backgroundColor: kColorScheme.onPrimaryContainer,
            foregroundColor: kColorScheme.primaryContainer,
        ),
        textTheme: ThemeData().textTheme.copyWith(
            titleLarge: TextStyle(
                fontWeight: FontWeight.bold,
                color: kColorScheme.onSecondaryContainer,
                fontSize: 16,
            ),
        ),
    ),
    themeMode: ThemeMode.system,
    home: const Center(
        child: Container(
            color: color: Theme.of(context).colorScheme.error.withRed(225),
            child: Text(
                expense.title,
                style: Theme.of(context).textTheme.titleLarge,
            ),
        ),
    ),
);
```
* `themeMode` parameter takes `ThemeMode` class wich have 3 attrigbutes `bright`, `dark`, and `system` which make the mode as the user prefer for his system.
* `brightness` parameter of the `ColorScheme` object tells Flutter that this color scheme is for dark mode.
* we provide `darkTheme` parameter for Flutter to use the app is on the dark mode.
