import 'package:flutter/material.dart';
import 'widgets/calendar_grid.dart';
import 'widgets/glass_header.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: const [
            GlassHeader(),
            Expanded(child: CalendarGrid()),
          ],
        ),
      ),
    );
  }
}