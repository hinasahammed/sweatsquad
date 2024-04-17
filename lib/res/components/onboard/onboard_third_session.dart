import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class OnboardThirdSession extends StatelessWidget {
  final PageController controller;
  const OnboardThirdSession({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      color: const Color(0xfff7f6fb),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/Fitness_stats-pana-removebg-preview.webp'),
          const Gap(20),
          Text(
            'Challenge Friends',
            style: theme.textTheme.titleLarge!.copyWith(
              color: theme.colorScheme.onBackground,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'Push yourself further by challenging your friends to fun workouts.',
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
