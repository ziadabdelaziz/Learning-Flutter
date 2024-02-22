# Interactivity, More Widgets & Theming Cont.
22-2-2024

### 1- ListView
* we used `Column` widget to render a list of items and when this list was big to fit the screen we used `SingleChildScrollView`.
* what if the list is very very long that contains thousands of items, if we used the method all the items will be stored in your memory even though you scroll to see only a few.
* here `ListView.builder()` comes handy, `ListView` widget is scrollable and have `children` parameter which accepts a list of widgets but it will still load all the data.
* `ListView.builder()` method renders the content of the list when needed.
* this method requires `itemBuilder` parameter which accepts a method that requires two parameters which are the context  of the widget of type `BuildContext` and the index of the item of type `int`, both of these paremeters are provided by Flutter.
```
ListView.builder(
    itemCount: myList.length,
    itemBuilder: (context, index) {
        return Text(myList[index])
    }
)
```
* the paramerter `itemCount` gets the length of the list items to help flutter know how many times build function will be executed.

### 2- Card Widget
* this widget wraps it's child with a container with some elevation, shadow and margin.

