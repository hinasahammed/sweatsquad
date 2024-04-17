import 'package:flutter/material.dart';
import 'package:sweat_squad/view/onboard/onbaoard_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sweat Squad',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xffFE7234),
        ),
        useMaterial3: true,
      ),
      home: const OnboardView(),
    );
  }
}
