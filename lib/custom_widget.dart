import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Color color;
  final VoidCallback onPressed;

  const CustomButton({
    required this.onPressed,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        onPressed();
      },
      padding: EdgeInsets.symmetric(horizontal: 80, vertical: 60),
      color: color,
    );
  }
}
