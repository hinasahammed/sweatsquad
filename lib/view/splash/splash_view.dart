import 'package:flutter/material.dart';
import 'package:sweat_squad/assets/images/image_asset.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: const Color(0xffFE7234),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            ImageAsset.logo,
          ),
          CircularProgressIndicator(
            color: theme.colorScheme.onPrimary,
          ),
        ],
      ),
    );
  }
}
