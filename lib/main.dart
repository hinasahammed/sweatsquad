import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sweat_squad/res/components/theme.dart';
import 'package:sweat_squad/res/routes/routes.dart';

void main()  {
  
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Sweat's  Squad",
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      getPages: Routes.getRoute(),
    );
  }
}
