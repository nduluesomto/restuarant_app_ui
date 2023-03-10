import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restuarant_app_ui/utils/theme_colors.dart';
import 'package:restuarant_app_ui/views/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ThemeColors.colorScheme,
      ),
      home: const HomePage(),
    );
  }
}
