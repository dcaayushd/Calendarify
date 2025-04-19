import 'package:flutter/material.dart';
import '../../../widgets/glass_container.dart';

class GlassHeader extends StatelessWidget {
  const GlassHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: GlassContainer(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text('२०७८ बैशाख', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
              Text('April 2025', style: TextStyle(fontSize: 16)),
            ],
          ),
        ),
      ),
    );
  }
}