import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sweat_squad/firebase_options.dart';
import 'package:sweat_squad/res/components/bottom_bar.dart';
import 'package:sweat_squad/res/theme.dart';
import 'package:sweat_squad/view/login/login_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Sweat Squad',
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      home: const BottomBar(),
    );
  }
}
