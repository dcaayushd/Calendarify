import 'package:flutter/material.dart';
import 'screens/home/home_screen.dart';
import 'theme/app_theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nepali Vision Calendar',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.visionTheme,
      home: const HomeScreen(),
    );
  }
}