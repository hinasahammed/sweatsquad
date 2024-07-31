import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sweat_squad/res/components/search/search_categories_card.dart';

class SearchView extends StatelessWidget {
  SearchView({super.key});

  final List images = [
    'https://i.pinimg.com/564x/9a/33/3e/9a333e995e5cd0b9ee1250749439dab7.jpg',
    'https://i.pinimg.com/564x/30/9c/84/309c84aeee8f44e747b1f5add41e11a3.jpg',
    'https://i.pinimg.com/564x/c8/f1/61/c8f161345e10c9d34c5408266d81055a.jpg',
    'https://i.pinimg.com/564x/8d/e6/15/8de615a7e84dca2610b9ece22dfb89ff.jpg',
  ];

  final List title = [
    'Strength',
    'Cardiovascular',
    'Flexibility',
    'Functional',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 10,
        ),
        child: Column(
          children: [
            SearchBar(
              controller: TextEditingController(),
              hintText: 'Search',
              shape: WidgetStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              trailing: const [
                Icon(Icons.search),
              ],
            ),
            const Gap(20),
            Expanded(
              child: ListView.separated(
                itemCount: 4,
                separatorBuilder: (context, index) => const Gap(5),
                itemBuilder: (context, index) {
                  return SearchCategoriesCard(
                    imageUrl: images[index],
                    title: title[index],
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
