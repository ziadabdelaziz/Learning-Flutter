# Responsive & Adaptive UI
7-3-2024

### 1- GridView
* we saw earlier `Column` widget which displays it's children vertically above each other and `Row` widget which displays it's children horizontally next to neach other.
* `GridView` allow us to display our widgets vertically and horizontally in a grid form.
```
class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Pick your category')),
      body: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20
        ),
        children: const [
          Text('1'),
          Text('2'),
          Text('3'),
          Text('4'),
          Text('5'),
          Text('6'),
        ],
      ),
    );
  }
}
```
* in the above code show us how to use `GridView` class.
* it alos have `builder()` constructor for optimization but we don't need it here.
* it requires `gridDelegate` to be initialized with `SliverGridDelegate` object which specifies the layout of the grid.
* `SliverGridDelegateWithFixedCrossAxisCount` class give us the ability to make the widgets displayed horizontally to be fixed in number, here we are displaying to widgets horizontally in each row and the number of rows is increases as the number of widgets increase.
* the `childAspectRation` paremter specify the ration between the height and width of each widget.
