import 'dart:convert';

import 'package:shopping_list/models/grocery_item.dart';
import 'package:shopping_list/network/groceries_source.dart';

class GroceriesRepository {
  static Future<List<GroceryItem>> loadGroceries() async {
    final response = await GroceriesSource.requestGroceries();
    
    if (response.body == 'null') return [];
    
    Map<String, dynamic> listData = json.decode(response.body);

    final List<GroceryItem> itemsList = listData.entries
        .map((item) => GroceryItem.fromJson({
              'id': item.key,
              ...item.value,
            }))
        .toList();

    return itemsList;
  }
}
