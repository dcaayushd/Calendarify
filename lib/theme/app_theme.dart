import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get visionTheme {
    return ThemeData(
      fontFamily: 'Sans',
      scaffoldBackgroundColor: Colors.black,
      textTheme: const TextTheme(
        bodyMedium: TextStyle(color: Colors.white),
      ),
    );
  }
}