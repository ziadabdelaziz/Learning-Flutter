# Responsive & Adaptive UI
6-3-2024

### 1- Widget Trees, Element Tree and Render Tree
* Flutter works with three trees, two of them are invisible to the developer.
* **Widget Tree:** combination of widgets in your code.
* **Element Tree:** In-memory representation of your widgets<br>
&nbsp; -> initially crated after `build()` method<br>
&nbsp; -> used for determining UI updates<br>
&nbsp; -> Elements are re-used if possible.
**Render Tree:** The visible UI building blocks<br>
&nbsp; -> only *partially* re-rendered if UI updates are needed<br>
&nbsp; -> updates are determined by element tree comparisons<br>
&nbsp; -> there are alot of work done here and it affects the app performance.

### 2- Keys
* each widget in the widget tree have an element in the element tree.
* when the widgets of the same type are re-ordered the elements doesn't change it's order accordingly, so the data will be mixed up.
* each element holds the state of its widget, if they get mixed up wrong widgets will have wrong states.
* keys solve this problem, as element tree won't look only on the widget type but also on the key of the widget that uniquely identifies it and find out that it doesn't match and will be re-ordered to match it's widget.
* you can create key with `ValueKey` class that takes string which should be unique to identify this widget or `ObjectKey` class that takes an object.

### 3- final vs const
* `final` variables can be manibulated behind the scenes but can't be re-assigned.
* `const` variables can't be manibulated behind the scenes or re-assigned (unmodifiable).
