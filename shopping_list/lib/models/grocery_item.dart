import 'package:shopping_list/data/categories.dart';
import 'package:shopping_list/models/category.dart';

class GroceryItem {
  const GroceryItem({
    required this.id,
    required this.name,
    required this.quantity,
    required this.category,
  });

  final String id;
  final String name;
  final int quantity;
  final Category category;

  factory GroceryItem.fromJson(Map<String, dynamic> json) {
    final category = categories.values
        .firstWhere((catItem) => catItem.title == json['category']);
    return GroceryItem(
      id: json['id'],
      name: json['name'],
      quantity: json['quantity'],
      category: category,
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'quantity': quantity,
        'category': category.title,
      };
}
