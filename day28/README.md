# Multiple Screens and Navigation
9-3-2024

### 1- Making Widget Tappable
* Flutter provides us with `InkWell` widget which can make any widget inside of it tappable.
* you probably will create `Container` and want to do some action when the user taps on it, `InkWell` helps us achieving this functionality.
```
InkWell(
    onTap: (){},
    child: Container(
        ...
    )
)
```
* `GestureDetector` widget heps us to achieve the same functionality but there is a difference between them.
* `InkWell` will give us a visual feedback when the user taps the item unlike `GestureDetector`.

### 2- Navigating to another Screen
* the `Navigator` class provided by Flutter help us navigate between screens.
```
Navigator.of(context).push(
    MaterialPageRoute(
        builder: (ctx) => MealsScreen(
            ...
        )
    ),
)
```
* to navigate to another a screen it's required to have the context of the current widget.
* `push()` method used to display another widget on the screen and `pop()` method return to the previous screen.
* navigating between screens is flutter is like stacking them on each other, pushing screen on top of the stack with will be displayed and popping screen on top to display the one beneath it.
* `push()` method requires `route` argument which we didn't talk about yet, for now Flutter provides `MaterialPageRoute` class which will help us create a route on the fly to display our widget by using a builder function that takes context and returns the widget we want to display.

### 3- contains() method of List
* we can check if a lsit contains a object by using `contains()` method which takes the object you want to check it's existence in the list.
```
List<String> ids = ['c1', 'c2', 'c3'];

if(ids.contains('c2')) {
    print('found it');
}
```
* this method will iterate over the items of the list and return `true` if found or `false` otherwise.

### 4- Stack
* `Stack` widget gives us the ability to display widgets on top of each other on the z-axis.
* it has `children` parameter where it's children are displayed in order.
* for positioning a widget on to of another widget, Flutter provides us with `Positioned` widget that can be very helpful in this situation.
```
Card(
    child: InkWell(
    onTap: () {},
    child: Stack(
        children: [
        FadeInImage(
            placeholder: MemoryImage(kTransparentImage),
            image: NetworkImage(meal.imageUrl),
        ),
        Positioned(
            bottom: 0,
            left: 0,
            child: Text(meal.title),
        )
        ],
    ),
    ),
)
```
* `Positioned` widget have `top`, `bottom`, `left` and `right` parameters which can help us in positioning the widgets in the stack.
* making `bottom` and `left` value *0* means leaving 0 space on the left and the bottom of the parent widget which will result on placing the child widget at the bottom left corner.

### 5- FadeInImage
* `FadeInImage` widget provide us with the functionality for making our images fade in on the screen after it's loaded.
* it has `placeholder` parameter which takes an initial image to display.
* for that we can use **transparent_image** package for the initial image.
* and `image` parameter which takes `NetworkImage` which takes a URL of an image to look for it on the internet and display on the app.

### Extras
* `BoxFit.cover` makes the image as small as possible covering the entire target box.
* `clipBehavior: Clip.hardEdge` to cut the content outside the box.