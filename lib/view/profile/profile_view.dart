import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sweat_squad/view/settings/settings_view.dart';

class ProfileView extends StatelessWidget {
  ProfileView({super.key});

  final List imageUrls = [
    'https://i.pinimg.com/564x/64/ba/a2/64baa2bb2369224974904c2b3930929a.jpg',
    'https://i.pinimg.com/564x/64/ba/a2/64baa2bb2369224974904c2b3930929a.jpg',
    'https://i.pinimg.com/564x/0a/51/d9/0a51d93927e864f62f0d4899e9f48c57.jpg',
    'https://i.pinimg.com/564x/b8/83/76/b8837675146a97489a37bbe64dc3cad9.jpg',
    'https://i.pinimg.com/564x/ef/f8/03/eff803823f6c2cd5502c13640357948d.jpg',
    'https://i.pinimg.com/564x/9d/eb/02/9deb0285f118d58032fe05a4c5b72885.jpg',
    'https://i.pinimg.com/564x/65/91/1c/65911caf227b313ad87edde02c6ccb4c.jpg',
    'https://i.pinimg.com/564x/a2/af/2a/a2af2a01775ba8c0cdb4d46612ae2738.jpg',
    'https://i.pinimg.com/564x/91/88/d2/9188d2ce85df25858fda610e0c1584db.jpg',
    'https://i.pinimg.com/564x/64/ba/a2/64baa2bb2369224974904c2b3930929a.jpg',
    'https://i.pinimg.com/564x/64/ba/a2/64baa2bb2369224974904c2b3930929a.jpg',
    'https://i.pinimg.com/564x/64/ba/a2/64baa2bb2369224974904c2b3930929a.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (ctx) => const SettingsView()));
              },
              icon: const Icon(Icons.settings))
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 10,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 3,
                      color: theme.colorScheme.secondary,
                    ),
                    shape: BoxShape.circle,
                  ),
                  child: const CircleAvatar(
                    radius: 60,
                    backgroundImage: NetworkImage(
                      'https://i.pinimg.com/736x/1d/0d/05/1d0d055d984d61ea602c79abfe96fab4.jpg',
                    ),
                  ),
                ),
                const Gap(20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          '100\nFollowers',
                          style: theme.textTheme.labelLarge!.copyWith(
                            color: theme.colorScheme.onSurface,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const Gap(20),
                        Text(
                          '80\nFollowing',
                          style: theme.textTheme.labelLarge!.copyWith(
                            color: theme.colorScheme.onSurface,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    const Gap(5),
                    Text(
                      '5\nChallenges',
                      style: theme.textTheme.labelLarge!.copyWith(
                        color: theme.colorScheme.onSurface,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ],
            ),
            const Gap(10),
            Text(
              'David',
              style: theme.textTheme.bodyLarge!.copyWith(
                color: theme.colorScheme.onSurface,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              "Fitness enthusiast passionate about helping others achieve their goals. Let's crush these challenges together!",
              style: theme.textTheme.labelLarge!.copyWith(
                color: theme.colorScheme.onSurface.withOpacity(.7),
              ),
            ),
            const Divider(),
            Text(
              'All Post',
              style: theme.textTheme.bodyLarge!.copyWith(
                color: theme.colorScheme.onSurface,
                fontWeight: FontWeight.w500,
              ),
            ),
            const Gap(10),
            GridView.builder(
              itemCount: 12,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
              ),
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    image: DecorationImage(
                      image: NetworkImage(
                        imageUrls[index],
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
