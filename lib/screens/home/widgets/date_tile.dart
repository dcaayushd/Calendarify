import 'package:flutter/material.dart';
import '../../../widgets/glass_container.dart';

class DateTile extends StatelessWidget {
  final int day;
  const DateTile({super.key, required this.day});

  @override
  Widget build(BuildContext context) {
    return GlassContainer(
      child: Center(
        child: Text(
          '$day',
          style: const TextStyle(fontSize: 18, color: Colors.white),
        ),
      ),
    );
  }
}