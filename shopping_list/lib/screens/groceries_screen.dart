import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopping_list/models/grocery_item.dart';
import 'package:shopping_list/provider/groceries.dart';
import 'package:shopping_list/screens/new_item_screen.dart';

class GroceriesScreen extends ConsumerStatefulWidget {
  const GroceriesScreen({super.key});

  @override
  ConsumerState<GroceriesScreen> createState() => _ShoppingListScreenState();
}

class _ShoppingListScreenState extends ConsumerState<GroceriesScreen> {
  List<GroceryItem> _groceryItems = [];

  @override
  void initState() {
    ref.read(groceriesProvider.notifier).loadItems();
    super.initState();
  }

  void _addItem() async {
    final newItem = await Navigator.of(context).push<GroceryItem>(
      MaterialPageRoute(
        builder: (ctx) => const NewItemScreen(),
      ),
    );

    if (newItem == null) {
      return;
    }

    setState(() {
      _groceryItems.add(newItem);
    });
  }

  @override
  Widget build(BuildContext context) {
    _groceryItems = ref.watch(groceriesProvider);

    Widget content = const Center(child: Text('There is no groceries yet!'));

    if (ref.read(groceriesProvider.notifier).loading) {
      content = const Center(child: CircularProgressIndicator());
    }

    if (_groceryItems.isNotEmpty) {
      content = Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: _groceryItems.length,
          itemBuilder: (context, index) => Dismissible(
            key: ValueKey(_groceryItems[index].id),
            onDismissed: (direction) {
              ref
                  .watch(groceriesProvider.notifier)
                  .removeItem(_groceryItems[index]);
            },
            child: ListTile(
              leading: Icon(
                Icons.square,
                color: _groceryItems[index].category.color,
              ),
              title: Text(_groceryItems[index].name),
              trailing: Text(
                '${_groceryItems[index].quantity}',
                style: const TextStyle(fontSize: 16),
              ),
            ),
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Groceries'),
        actions: [
          IconButton(
            onPressed: _addItem,
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: content,
    );
  }
}
