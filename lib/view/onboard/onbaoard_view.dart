import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:sweat_squad/res/components/onboard/onboard_first_session.dart';
import 'package:sweat_squad/res/components/onboard/onboard_second_session.dart';
import 'package:sweat_squad/view/splash/splash_view.dart';

class OnboardView extends StatefulWidget {
  const OnboardView({super.key});

  @override
  State<OnboardView> createState() => _OnboardViewState();
}

class _OnboardViewState extends State<OnboardView> {
  final controller = PageController();
  bool isLastPage = false;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: const Color(0xfff7f6fb),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: PageView(
              controller: controller,
              onPageChanged: (value) {
                setState(() => isLastPage = value == 3);
              },
              children: [
                OnboardFirstSession(
                  controller: controller,
                ),
                OnboardCommon(
                  controller: controller,
                  imageUrl:
                      'assets/images/18352181_5970192-removebg-preview.webp',
                  title: 'Challenge Friends',
                  description:
                      'Push yourself further by challenging your friends to fun workouts.',
                ),
                OnboardCommon(
                  controller: controller,
                  imageUrl:
                      'assets/images/Fitness_stats-pana-removebg-preview.webp',
                  title: 'Create Workouts',
                  description:
                      'Design your own custom workouts and share them with the community.',
                ),
                OnboardCommon(
                  controller: controller,
                  imageUrl:
                      'assets/images/Skipping_rope-bro-removebg-preview.webp',
                  title: 'Track Progress',
                  description:
                      'Earn points, climb the leaderboard, and see your fitness journey unfold.',
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SmoothPageIndicator(
                  controller: controller,
                  count: 4,
                  onDotClicked: (index) => controller.animateToPage(
                    index,
                    duration: const Duration(milliseconds: 250),
                    curve: Curves.easeInOut,
                  ),
                  effect: ExpandingDotsEffect(
                    activeDotColor: const Color(0xffFE7234),
                    dotColor: const Color(0xffFE7234).withOpacity(.4),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xffFE7234),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  onPressed: () {
                    isLastPage
                        ? Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (ctx) => const SplashView()))
                        : controller.nextPage(
                            duration: const Duration(milliseconds: 250),
                            curve: Curves.easeIn,
                          );
                  },
                  child: Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: theme.colorScheme.onPrimary,
                  ),
                ),
              ],
            ),
          ),
          const Gap(10),
        ],
      ),
    );
  }
}
