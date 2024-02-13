import 'package:flutter/material.dart';

class ChoiceButton extends StatelessWidget {
  final String choice;
  const ChoiceButton({
    super.key,
    required this.choice,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: const Color.fromARGB(255, 57, 7, 114),
          fixedSize: const Size(300, 30),
        ),
        onPressed: () {},
        child: Text(choice),
      ),
    );
  }
}
