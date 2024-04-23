import 'package:flutter/material.dart';

class SearchCategoriesCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  const SearchCategoriesCard({
    super.key,
    required this.imageUrl,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final size = MediaQuery.sizeOf(context);
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
        image: DecorationImage(
          alignment: Alignment.topCenter,
          image: NetworkImage(
            imageUrl,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(10),
        height: size.width * .4,
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(.5),
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: theme.textTheme.titleLarge!.copyWith(
                color: theme.colorScheme.background,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Divider(
              endIndent: 100,
              thickness: 2,
            ),
          ],
        ),
      ),
    );
  }
}
