import 'package:flutter/material.dart';
import 'screens/home/home_screen.dart';
import 'theme/app_theme.dart';

class CalendarifyApp extends StatelessWidget {
  const CalendarifyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calendarify',
      theme: AppTheme.lightTheme,
      home: const HomeScreen(),
    );
  }
}