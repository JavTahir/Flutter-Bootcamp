import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  VoidCallback onPressed;
  MyButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return MaterialButton(
      onPressed: onPressed,
      color: theme.primaryColor,
      child: Text(text),
    );
  }
}
