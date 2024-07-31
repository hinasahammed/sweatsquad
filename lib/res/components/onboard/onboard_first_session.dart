import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class OnboardFirstSession extends StatelessWidget {
  final PageController controller;
  const OnboardFirstSession({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      color: const Color(0xfff7f6fb),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/7971279_3802449-removebg-preview.webp'),
          const Gap(20),
          Text(
            'Welcome to SweatSquad',
            style: theme.textTheme.titleLarge!.copyWith(
              color: theme.colorScheme.onSurface,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'Get Fit & Have Fun!',
            style: theme.textTheme.bodyLarge!.copyWith(
              color: theme.colorScheme.onSurface,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            'Take your fitness journey to the next level',
            style: theme.textTheme.bodyLarge!.copyWith(
              color: theme.colorScheme.onSurface.withOpacity(.6),
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
