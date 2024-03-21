import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopping_list/provider/groceries.dart';
import 'package:shopping_list/screens/new_item_screen.dart';

class GroceriesScreen extends ConsumerStatefulWidget {
  const GroceriesScreen({super.key});

  @override
  ConsumerState<GroceriesScreen> createState() => _ShoppingListScreenState();
}

class _ShoppingListScreenState extends ConsumerState<GroceriesScreen> {
  void _addItem() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => const NewItemScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final groceries = ref.read(groceriesProvider);
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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: groceries.length,
          itemBuilder: (context, index) => ListTile(
            leading: Icon(
              Icons.square,
              color: groceries[index].category.color,
            ),
            title: Text(groceries[index].name),
            trailing: Text(
              '${groceries[index].quantity}',
              style: const TextStyle(fontSize: 16),
            ),
          ),
        ),
      ),
    );
  }
}
