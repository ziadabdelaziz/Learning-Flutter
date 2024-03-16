# Managing App-wide State
16-3-2024

### 1- Riverpod
* **Riverpod** package let us use our data any where in the widget tree by storing the data inside `Provider` class.
```
import 'package:flutter_riverpod/flutter_riverpod.dart';

final clothesProvider = Provider((ref) {
  return [
    'jacket',
    'trousers',
    'T-shirt',
  ];
});
```
* to use this provider in your widget tree you need to wrap `runApp()` function with `ProviderScope` class from **Riverpod** package.
```
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals/app.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}
```
* after that you can use this state from any widget in your widget tree, but fist you need to do some things in this widget.
```
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals/provider/meals_provider.dart';

class ShoppingListScreen extends ConsumerStatefulWidget {
  const ShoppingListScreen({super.key});

  @override
  ConsumerState<ShoppingListScreen> createState() => _ShoppingListScreenState();
}

class _ShoppingListScreenState extends ConsumerState<ShoppingListScreen> {
    @override
    Widget build(BuildContext context) {
    final meals = ref.watch(mealsProvider);

    return ...
    }
}
    
```
* when working with stateful widget, you would need to change the **super** class from `StatefulWidget` to `ConsumerStatefulWidget` and instead of `State` you need to use `ConsumerState`, these classes provided by **Riverpod** to help us managing our state (when working with stateless widget use `ConsumerWidget`).
* and to use the data `ref` property provided by `ConsumerState` similar to `widget` property with `StatefulWidget`.
* there are tree methods to use in `ref`.
&nbsp; -> `read()`: returns the data from our provider but it doesn't listen to changes in the data.
&nbsp; -> `listen()`: listen to changes in the data.
&nbsp; -> `watch()`: returns the data and listen to changes, so it provide us with the data and when a change happens to the data it re-builds the widget, it's recommended to use this method even if you need to read only.
* this is a simple example for a data that doesn't change.
