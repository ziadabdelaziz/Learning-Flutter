# Multiple Screens and Navigation
13-3-2024

### 1- Returning Data when leaving a Screen
* when the user leaves the screen either with the back button of the app or from the return button on the device, we want to return some data.
* for that we can use `PopScope` widget which gives us the ability to know the returned from the current screen and execute a function when the user tends to leave. 
```
PopScope(
    canPop: false,
    onPopInvoked: (bool didPop) {
    if (didPop) return;
    Navigator.of(context).pop({
        'text': 'returned text',
    });
    },
    child: ...
)
```
* `canPop` paremeter controls system back gestures, which is enabled by default (default value `true`).
* when the call `pop()` method `onPopInvoked` method will be called with `didPop` value equal `false` and after we call it manually it's value will be `true` then return (this is how we are using it, you can use it depending on the need of your app).
* `pop()` method can accept an argument to return it to where the `push()` method was called.
* where `push()` method was called it can return the data from the `pop()` method.
```
final result = await Navigator.of(context).push<Map<String, String>>(
MaterialPageRoute(builder: (ctx) => const FiltersScreen()),
);
```
* this is how we get the returned value from `push()` method.
* this method is a generic type, which means it can return any value we specify in the angle brackets `<>`.
* using `await` keyword because the user pops the screen in the future not immediately, so this key word helps us to wait until the user pops the screen then return the value.
