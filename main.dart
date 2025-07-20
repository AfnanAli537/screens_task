import 'package:flutter/material.dart';
import 'package:screens_task/app_colors.dart';
import 'package:screens_task/splash_screen.dart';
import '/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.mainColor),
      ),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}