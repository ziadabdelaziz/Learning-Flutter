import 'package:flutter/material.dart';

class GroceryTile extends StatelessWidget {
  const GroceryTile({
    required this.color,
    required this.title,
    required this.quantity,
    super.key,
  });

  final Color color;
  final String title;
  final int quantity;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24),
      child: Row(
        children: [
          Icon(Icons.square, color: color),
          const SizedBox(width: 24),
          Text(title),
          const Spacer(),
          Text('$quantity'),
        ],
      ),
    );
  }
}
