import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class LeaderboardView extends StatelessWidget {
  const LeaderboardView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ranking'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 10,
        ),
        child: Column(
          children: [
            Card(
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const CircleAvatar(
                            radius: 50,
                            backgroundImage: NetworkImage(
                              'https://i.pinimg.com/564x/f9/23/68/f92368ac6737e58b34917a23ce35e82e.jpg',
                            ),
                          ),
                          Text(
                            'David',
                            style: theme.textTheme.bodyLarge!.copyWith(
                              color: theme.colorScheme.primary,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            '120',
                            style: theme.textTheme.labelLarge!.copyWith(
                              color: theme.colorScheme.primary,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Image.asset(
                        'assets/images/pngwing.com (1).png',
                        width: size.width * .2,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Card(
                    child: Container(
                      padding: const EdgeInsets.all(5),
                      height: size.height * .2,
                      decoration: const BoxDecoration(),
                      child: Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const CircleAvatar(
                                radius: 35,
                                backgroundImage: NetworkImage(
                                  'https://i.pinimg.com/564x/f9/23/68/f92368ac6737e58b34917a23ce35e82e.jpg',
                                ),
                              ),
                              Text(
                                'David',
                                style: theme.textTheme.bodyLarge!.copyWith(
                                  color: theme.colorScheme.primary,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                '120',
                                style: theme.textTheme.labelLarge!.copyWith(
                                  color: theme.colorScheme.primary,
                                ),
                              ),
                            ],
                          ),
                          Expanded(
                            child: Image.asset(
                              'assets/images/pngwing.com (2).png',
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Card(
                    child: Container(
                      padding: const EdgeInsets.all(5),
                      height: size.height * .2,
                      decoration: const BoxDecoration(),
                      child: Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const CircleAvatar(
                                radius: 35,
                                backgroundImage: NetworkImage(
                                  'https://i.pinimg.com/564x/f9/23/68/f92368ac6737e58b34917a23ce35e82e.jpg',
                                ),
                              ),
                              Text(
                                'David',
                                style: theme.textTheme.bodyLarge!.copyWith(
                                  color: theme.colorScheme.primary,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                '120',
                                style: theme.textTheme.labelLarge!.copyWith(
                                  color: theme.colorScheme.primary,
                                ),
                              ),
                            ],
                          ),
                          Expanded(
                            child: Image.asset(
                              'assets/images/pngwing.com (3).png',
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Name',
                  style: theme.textTheme.bodyLarge!.copyWith(
                    color: theme.colorScheme.onSurface,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  'Point',
                  style: theme.textTheme.bodyLarge!.copyWith(
                    color: theme.colorScheme.onSurface,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 10,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 6,
                    ),
                    leading: Text(
                      '${index + 4}',
                      style: theme.textTheme.bodyLarge!.copyWith(
                        color: theme.colorScheme.onSurface,
                      ),
                    ),
                    title: Row(
                      children: [
                        const CircleAvatar(
                          backgroundImage: NetworkImage(
                            'https://i.pinimg.com/564x/a7/fc/12/a7fc121134320e11efa0d989b93c7a42.jpg',
                          ),
                        ),
                        const Gap(5),
                        Text(
                          'Daniel',
                          style: theme.textTheme.labelLarge!.copyWith(
                            color: theme.colorScheme.onSurface,
                          ),
                        ),
                      ],
                    ),
                    trailing: Text(
                      '30',
                      style: theme.textTheme.labelLarge!.copyWith(
                        color: theme.colorScheme.onSurface,
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
