import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final void Function()? onPressed;
  final String btnTitle;
  const CustomButton({
    super.key,
    this.onPressed,
    required this.btnTitle,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.primary,
      ),
      onPressed: onPressed,
      child: Text(
        btnTitle,
        style: theme.textTheme.bodyLarge!.copyWith(
          color: theme.colorScheme.onPrimary,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
