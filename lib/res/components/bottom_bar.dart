import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:sweat_squad/view/home/home_view.dart';
import 'package:sweat_squad/view/leaderboard/leaderboard_view.dart';
import 'package:sweat_squad/view/profile/profile_view.dart';
import 'package:sweat_squad/view/search/search_view.dart';
import 'package:sweat_squad/view/upload/upload_challenge_view.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int currentIndex = 0;
  final List pages = [
    const HomeView(),
    SearchView(),
    const UploadChallengeView(),
    const LeaderboardView(),
    ProfileView(),
  ];
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 8,
          vertical: 12,
        ),
        child: GNav(
          onTabChange: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          rippleColor: theme.colorScheme.primary.withOpacity(.5),
          hoverColor: theme.colorScheme.primary.withOpacity(.5),
          color: theme.colorScheme.primary,
          activeColor: theme.colorScheme.onPrimary,
          tabBackgroundColor: theme.colorScheme.primary,
          backgroundColor: theme.colorScheme.background,
          gap: 7,
          iconSize: 24,
          padding: const EdgeInsets.all(12),
          tabs: const [
            GButton(
              icon: Icons.home_filled,
              text: 'Home',
            ),
            GButton(
              icon: Icons.search,
              text: 'Search',
            ),
            GButton(
              icon: Icons.add_box_rounded,
              iconSize: 30,
            ),
            GButton(
              icon: Icons.leaderboard,
              text: 'Ranking',
            ),
            GButton(
              icon: Icons.person,
              text: 'Profile',
            )
          ],
        ),
      ),
    );
  }
}
