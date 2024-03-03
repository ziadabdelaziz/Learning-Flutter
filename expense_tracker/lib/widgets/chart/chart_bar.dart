import 'package:flutter/material.dart';

class ChartBar extends StatelessWidget {
  const ChartBar({
    super.key,
    required this.fill,
  });

  final double fill;

  @override
  Widget build(BuildContext context) {
    final isDarkMode =
        MediaQuery.of(context).platformBrightness == Brightness.dark;
    return Expanded(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 4),
        height: fill * 120,
        decoration: BoxDecoration(
          color: isDarkMode
              ? Theme.of(context).colorScheme.secondary
              : Theme.of(context).colorScheme.primary.withOpacity(0.65),
          borderRadius: const BorderRadius.vertical(top: Radius.circular(8)),
        ),
      ),
    );
  }
}
