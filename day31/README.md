# Multiple Screens and Navigation
12-3-2024

### 1- Side Drawer
* having a side drawer on the mobile application that let you navigate to multiple screens of the app is a common feature.
* `Scaffold` have a `drawer` parameter which accepts `Drawer` widget which contains the content you want to display, and just like that you can have drawer on your application.
```
Scaffold(
    drawer: Drawer(
        child: Column(
        children: [
            DrawerHeader(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [
                        Theme.of(context).colorScheme.primaryContainer,
                        Theme.of(context).colorScheme.primaryContainer.withOpacity(0.8),
                    ], 
                    begin: Alignment.topLeft, 
                    end: Alignment.bottomRight,
                ),
            ),
            child: Row(
                children: [
                Icon(
                    Icons.fastfood,
                    size: 48,
                    color: Theme.of(context).colorScheme.primary,
                ),
                const SizedBox(width: 18),
                Text(
                    'Cooking Up!',
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: Theme.of(context).colorScheme.primary,
                        ),
                    )],
                ),
            )],
        ),
    ),
    body: ...
),

```
* this is how we can use `Drawer` widget in our application.
* notice `DrawerHeader` widget which is have a specific styling for the drawer heading.
* with that Flutter will create a burger menue at the right on the app bar, when pressed on the drawer will show up from the left as default.

### 2- ListTile
* `ListTile` widget have common styling for mobile application tiles.
```
ListTile(
    leading: Icon(Icons.settings),
    title: Text('tile title'),
    subtitle: Text('sub-title'),
    trailing: Icon(Icons.delete)
    onTap: () {},
)
```
* it provides us with titile, sub-title, a leading which can will be displayed at the start of the tile which is by default the left, a trailing at the end and it can be tapable using `onTap` method to execute method when pressed.

### 3- SwitchListTile
* `SwitchListTile` provides us with UI similar to list tile but it has a toggle switch at the end.
```
SwitchListTile(
    value: booleanVariable,
    onChanged: (currentValue) {},
    title: Text('Gluten-free'),
    subtitle: Text('Only inlucde gluten-free meals.'),
    activeColor: Colors.green,
    contentPadding: const EdgeInsets.only(left: 34, right: 22),
    ),
```
* this widget provides us with the functionality of changing a `boolean` variable value from `true` to `false` and the opposite.

### 4- pushReplacement
* `pushReplacement()` method in `Navigator` class can be used to replace the previous screen with the next instead of putting it on top of the screens stack which `push()` method do, so when you use `pop()` it will return to the screen that came after the previous one or close the app if there isn't a screen before the previous one.
