import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';

class LeaderboardView extends StatelessWidget {
  const LeaderboardView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ranking'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 10,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Name',
                  style: theme.textTheme.bodyLarge!.copyWith(
                    color: theme.colorScheme.onBackground,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  'Point',
                  style: theme.textTheme.bodyLarge!.copyWith(
                    color: theme.colorScheme.onBackground,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            Expanded(
              child: ListView.separated(
                itemCount: 10,
                separatorBuilder: (context, index) => const Gap(10),
                itemBuilder: (context, index) {
                  return ListTile(
                    contentPadding: const EdgeInsets.all(0),
                    
                    leading: Row(
                      children: [
                        Text(
                          "${index + 1}",
                          style: theme.textTheme.labelLarge!.copyWith(
                            color: theme.colorScheme.onBackground,
                          ),
                        ),
                        const CircleAvatar(
                          radius: 30,
                          backgroundImage: NetworkImage(
                            'https://i.pinimg.com/564x/a7/fc/12/a7fc121134320e11efa0d989b93c7a42.jpg',
                          ),
                        ),
                      ],
                    ),
                    title: Text(
                      'Daniel',
                      style: theme.textTheme.labelLarge!.copyWith(
                        color: theme.colorScheme.onBackground,
                      ),
                    ),
                    trailing: const Text('30'),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
