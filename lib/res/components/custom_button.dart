// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:sweat_squad/data/response/status.dart';

class CustomButton extends StatelessWidget {
  final void Function()? onPressed;
  final String btnTitle;
  final Status status;
  const CustomButton({
    super.key,
    this.onPressed,
    required this.btnTitle,
    this.status = Status.completed,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.primary,
      ),
      onPressed: onPressed,
      child: status == Status.loading
          ? CircularProgressIndicator(
              color: theme.colorScheme.onPrimary,
            )
          : Text(
              btnTitle,
              style: theme.textTheme.bodyLarge!.copyWith(
                color: theme.colorScheme.onPrimary,
                fontWeight: FontWeight.w500,
              ),
            ),
    );
  }
}
