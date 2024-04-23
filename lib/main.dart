import 'package:flutter/material.dart';
import 'package:sweat_squad/res/components/bottom_bar.dart';
import 'package:sweat_squad/res/theme.dart';

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
      theme: lightTheme,
      home: const BottomBar(),
    );
  }
}
