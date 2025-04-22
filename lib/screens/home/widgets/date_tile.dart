import 'package:flutter/material.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../services/calendar_service.dart';
import '../../event/event_details_screen.dart';

class DateTile extends StatelessWidget {
  final int nepaliDay;
  final int gregorianDay;
  final bool isToday;
  final bool isCurrentMonth;

  const DateTile({
    super.key,
    required this.nepaliDay,
    required this.gregorianDay,
    required this.isToday,
    required this.isCurrentMonth,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
    final date = DateTime(2025, 1, nepaliDay); // Dummy logic
    final events = CalendarService.getEventsForMonth(date.year, date.month)
        .where((e) => e.date.day == date.day)
        .toList();
    final tithis = CalendarService.getTithisForMonth(date.year, date.month)
        .where((t) => t.date.day == date.day)
        .toList();

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => EventDetailsScreen(
          date: date,
          events: events,
          tithis: tithis,
        ),
      ),
    );
  },
      child: Container(
        decoration: BoxDecoration(
          color: isToday ? AppColors.greenLight : Colors.transparent,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: isCurrentMonth ? AppColors.gray : Colors.grey.shade300,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '$nepaliDay',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: isCurrentMonth ? Colors.black : AppColors.gray,
                ),
              ),
              Text(
                '$gregorianDay',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}