import 'package:flutter/material.dart';

class StartButton extends StatelessWidget {
  const StartButton({
    super.key,
    required this.label,
    required this.icon,
    required this.startQuiz,
  });

  final IconData icon;
  final String label;
  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      style: OutlinedButton.styleFrom(
        foregroundColor: Colors.white,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
        ),
        textStyle: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      onPressed: startQuiz,
      icon: Icon(icon),
      label: Text(label),
    );
  }
}
