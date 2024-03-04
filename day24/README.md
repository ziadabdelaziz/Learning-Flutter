# Responsive & Adaptive UI
4-3-2024

### 1- What is Responsiveness?
* there are alot of differnt screen sizes and there is the vertical and horizontal orientation of the screen to which your app should look nice at all of them.
* making your app layout and styling adjustable according to different screen size and different oreintation is what it means to be responsive.

### 2- Locking Device Orientation
* One way to make sure that your UI will be rendered in a suitable way is specify the orientation that you want your app to displayed in.
```
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:expense_tracker/app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]).then((fn) {
    runApp(const ExpenseTracker());
  });
}
```
* using **services package** provided by Flutter, `SystemChrome` class have `setPreferredOrientations()` method which takes a list of `DeviceOrientation` enum, to specify the orientations on which we desire our app to be displayed only.
* the architecture layers of Flutter are<br>
**Framework (dart)**<br>
**Engine (C/C++)**<br>
**Embedder (Platform-specific)**
* `SystemChrome` call native code before calling `runApp()` so we need to have an instance of `WidgetBinding` which is required to use platform channels to call native code.
* for that we call `WidgetsFlutterBinding.ensureInitialized()`.
* `setPreferredOrientations()` method returns a `Future` object which have a `then()` method that takes a function to be executed as an argument, in this function we executed `runApp()`.
* `then()` method is executed only after `setPreferredOrientations()` is done as it may take some time.

### 3- Adjusting UI according to Available Space
* to adjust your UI according to the device's screen size, you need some information about the device.
* Flutter provides us with the `MediaQuery` class which gives us information about the available space.
```
@override
Widget build(BuildContext context) {
final double screenWidth = MediaQuery.of(context).size.width;
  ...
}
```
* the `MediaQuery` class has `of()` constructor that takes *context* of the current widget in the widget tree and gives us information about the current widget and the screen, in the above example we get the width of the screen.
* you can use ternary expression or conditions using the screen width information to render the UI accordingly.

### 4- Understanding Widget Size Constraints
* we need to understand how Flutter widgets get sized and displayed on the screen.
* widgets get sized based on their **size preferences** and parent widget **size constraints**.
* let's take a look at `Column` widget preferences<br>
&nbsp; -> **height:** as much as possible<br>
&nbsp; -> **width** as much as needed by children
* this widget needs height constraints to prevent rendering problems.
* it's safe to have `Scaffold` as the `Column` parent because it has height and width constraints<br>
&nbsp; -> **height:** max. device height<br>
&nbsp; -> **width:** max. device width
* but it will be a problem if we have the parent widget `Column` as the child wants as much space as possible and the parent doesn't give constraints.
* now we have a better view of how spacing is done in Flutter.
