import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Sweat Squad',
        ),
        actions: const [
          Icon(Icons.notifications_active),
          Gap(10),
        ],
      ),
      body: Card(
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://i.pinimg.com/564x/2d/15/ef/2d15ef58cd3fafe7a97108502b466316.jpg'),
                        ),
                        const Gap(5),
                        Text(
                          'Saitama',
                          style: theme.textTheme.labelLarge!.copyWith(
                            color: theme.colorScheme.onBackground,
                          ),
                        ),
                      ],
                    ),
                    const Icon(Icons.more_vert_outlined),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.sizeOf(context).width,
                height: MediaQuery.sizeOf(context).height * .5,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      'https://i.pinimg.com/564x/18/24/5a/18245a228578ad8e63821706680efc5f.jpg',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
