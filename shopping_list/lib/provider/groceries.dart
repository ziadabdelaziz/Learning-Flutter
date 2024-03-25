import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shopping_list/models/grocery_item.dart';
import 'package:shopping_list/network/groceries_source.dart';
import 'package:shopping_list/repo/groceries_repository.dart';

class GroceriesNotifier extends StateNotifier<List<GroceryItem>> {
  GroceriesNotifier() : super([]);
  var loading = true;

  void loadItems() async {
    state = await GroceriesRepository.loadGroceries();
    loading = false;
  }

  void removeItem(GroceryItem item) {
    GroceriesSource.deleteItem(item.id);
    state.remove(item);
  }
}

final groceriesProvider =
    StateNotifierProvider<GroceriesNotifier, List<GroceryItem>>(
  (ref) => GroceriesNotifier(),
);
