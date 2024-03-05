# Responsive & Adaptive UI
5-3-2024

### 1- Screen Overlays
* when working with user inputs, you would need the keyboard layout at the bottom of the screen.
* the keyboard will overlay the application UI.  
```
MediaQuery.of(context).viewInsets.bottom;
```
* this line of code gives us the size of the overlayed UI at the bottom of the screen.
* with that we can adjust space accordingly.

### 2- SafeArea
* to adjust the space around the corner of the mobile screen it's tricky to know how much margin or padding needed to prevent device camera from overlaying on the UI for as it changes from device to another.
* `SafeArea` class provided by Flutter helps us setting that space by wrapping the widget with it instead of `Padding`.
* and for some utility function like `showModalBottomSheet` you can use `useSafeArea` parameter and give it the value `true` to do the same functionality.

### 3- LayoutBuilder Widget
* we used `MediaQuery` to adjust the UI according to the available space.
* Flutter provices us with `LayoutBuilder` widgets that allow us to have information about the parent available space.
```
LayoutBuilder(builder: (ctx, constraints){
    final width = constraints.maxWidth;
    return Container();
})
```
* `LayoutBuilder` have `builder` parameter which gets a function that takes context and constraints as an argument, this *constraints* parameter have information about the available space in the parent widget, we can use this information to render our UI conditionally.
* it's useful when we need to know the space of the parent widget only and not the entire screen.

### 4- Adjust UI According to Platform
```
import 'dart:io';

if (Platform.isIOS) {
    showCupertinoDialog (
        ...
    );
} else {
    showDialog(
        ...
    );
}
```
* Flutter provides us with `Platform` class from `dart:io` package that provides us with specific information about the platform which our app is running on, with that information we can render our UI conditionally.
* also Flutter provides us with some widgets specific to the targeted platform, for example there is `showCupertinoDialog()` method which shows a dialog message of the IOS platform instead of the `showDialog()` which is designed for Android style.
