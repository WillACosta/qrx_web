import 'package:flutter/material.dart';

enum ButtonType {
  primary,
  secondary,
}

class ButtonComponent extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;
  final ButtonType type;

  const ButtonComponent({
    Key? key,
    required this.label,
    this.onPressed,
    this.type = ButtonType.primary,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (type == ButtonType.primary) {
      return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          primary: Colors.white,
          onPrimary: Colors.black,
          padding: const EdgeInsets.all(20),
        ),
        child: Text(label),
      );
    }

    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        primary: Colors.white,
        backgroundColor: Colors.black,
        textStyle: const TextStyle(fontSize: 14),
        side: const BorderSide(width: 1, color: Colors.white),
        padding: const EdgeInsets.all(20),
      ),
      child: Text(label),
    );
  }
}
