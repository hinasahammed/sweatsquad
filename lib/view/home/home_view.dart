import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Sweat Squad'),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_active),
            onPressed: () {},
          ),
          const Gap(10),
        ],
      ),
      body: ListView.separated(
        padding: const EdgeInsets.symmetric(
          vertical: 2,
          horizontal: 4,
        ),
        itemCount: 4,
        separatorBuilder: (context, index) => const Gap(10),
        itemBuilder: (context, index) {
          return Card(
            clipBehavior: Clip.hardEdge,
            child: Column(
              children: [
                ListTile(
                  leading: const CircleAvatar(
                    backgroundImage: NetworkImage(
                      'https://i.pinimg.com/564x/2d/15/ef/2d15ef58cd3fafe7a97108502b466316.jpg',
                    ),
                  ),
                  title: Text(
                    'Saitama',
                    style: theme.textTheme.labelLarge!.copyWith(
                      color: theme.colorScheme.onSurface,
                    ),
                  ),
                  trailing: const Icon(Icons.more_vert_outlined),
                ),
                AspectRatio(
                  aspectRatio: 4 / 5,
                  child: Image.network(
                    'https://i.pinimg.com/564x/ef/9f/bb/ef9fbbd8706d83df9fcde6ed3eede82f.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
