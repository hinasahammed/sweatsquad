import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class OnboardCommon extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String description;
  final PageController controller;
  const OnboardCommon({super.key, required this.controller, required this.imageUrl, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      color: const Color(0xfff7f6fb),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(imageUrl),
          const Gap(20),
          Text(
            title,
            style: theme.textTheme.titleLarge!.copyWith(
              color: theme.colorScheme.onBackground,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            description,
            style: theme.textTheme.bodyLarge!.copyWith(
              color: theme.colorScheme.onBackground.withOpacity(.6),
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
