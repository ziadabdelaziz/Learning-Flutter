# Multiple Screens and Navigation
11-3-2024

### 1- Adding Tap-based Navigation
* in most mobile applications it's common to have a bottom navigation bar to navigate between screens.
* for than Flutter provided us with an easy way to add this feature.
* `Scaffold` widget has a `bottomNavigationBar` parameter which accepts `BottomNavigationBar` widget as an argument.
* here is a code example
```
int _selectedPageIndex = 0;

void _selectePage(int index) {
    setState(() {
        _selectedPageIndex = index;
    });
}

@override
Widget build(BuildContext context) {
    Widget activePage = const CategoriesScreen();
    var activePageTitle = 'Categories';

    if (_selectedPageIndex == 1) {
        activePage = const MealsScreen(title: 'Favorites', meals: []);
        activePageTitle = 'Your Favorites';
    }

    return Scaffold(
        appBar: AppBar(
        title: Text(activePageTitle),
        ),
        body: activePage,
        bottomNavigationBar: BottomNavigationBar(
            onTap: _selectePage,
            currentIndex: _selectedPageIndex,
            items: const [
                BottomNavigationBarItem(
                icon: Icon(Icons.set_meal),
                label: 'Categories',
            ),
                BottomNavigationBarItem(
                icon: Icon(Icons.star),
                label: 'Favorites',
            )],
        ),
    );
}
```
* `BottomNavigationBar` widget takes `onTap` method, `currentIndex` integer and `items` parameter which takes a list of `BottomNavigationBarItem` widgets.
* `BottomNavigationBarItem` takes an icon and a label to be displayed on the naviation bar.
