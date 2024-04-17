import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final void Function()? onPressed;
  final Widget child;
  const CustomButton({
    super.key,
    this.onPressed,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(),
      onPressed: onPressed,
      child: child,
    );
  }
}
