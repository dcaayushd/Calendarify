import 'package:flutter/material.dart';
import '../../../models/event_model.dart';
import '../../../models/tithi_model.dart';

class EventDetailsScreen extends StatelessWidget {
  final DateTime date;
  final List<Event> events;
  final List<Tithi> tithis;

  const EventDetailsScreen({
    super.key,
    required this.date,
    required this.events,
    required this.tithis,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Events & Tithis')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('${date.year}-${date.month}-${date.day}', style: Theme.of(context).textTheme.headlineSmall),
            const SizedBox(height: 20),
            if (tithis.isNotEmpty)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Tithis', style: Theme.of(context).textTheme.titleMedium),
                  ...tithis.map((tithi) => ListTile(
                        title: Text(tithi.name),
                        trailing: tithi.isHoliday ? const Icon(Icons.flag, color: Colors.red) : null,
                      )),
                  const SizedBox(height: 10),
                ],
              ),
            if (events.isNotEmpty)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Events', style: Theme.of(context).textTheme.titleMedium),
                  ...events.map((event) => ListTile(
                        title: Text(event.title),
                        subtitle: Text(event.description),
                      )),
                ],
              ),
            if (events.isEmpty && tithis.isEmpty)
              const Center(child: Text("No events or tithis for this day.")),
          ],
        ),
      ),
    );
  }
}
