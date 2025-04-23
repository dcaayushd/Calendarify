import 'package:calendarify/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'date_tile.dart';
import '../../../../core/utils/date_utils.dart';

class CalendarGrid extends StatelessWidget {
  const CalendarGrid({super.key});

  @override
  Widget build(BuildContext context) {
    final today = DateTime.now();
    final firstDayOfMonth = DateTime(today.year, today.month, 1);
    final weekdayOffset = firstDayOfMonth.weekday % 7; // Aligns Sunday to 0

    return Expanded(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              Text('आइत\nSun'),
              Text('सोम\nMon'),
              Text('मंगल\nTue'),
              Text('बुध\nWed'),
              Text('बिही\nThu'),
              Text('शुक्र\nFri'),
              Text('शनि\nSat', style: TextStyle(color: AppColors.red)),
            ],
          ),
          const SizedBox(height: 8),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(16),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 7,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemCount: 42,
              itemBuilder: (context, index) {
                final dayOffset = index - weekdayOffset;
                final date = DateTime(today.year, today.month, 1).add(Duration(days: dayOffset));

                final dateInfo = DateUtilsCustom.getNepaliDateInfo(date);

                return DateTile(
                  nepaliDay: dateInfo.nepaliDay,
                  gregorianDay: dateInfo.gregorianDay,
                  isToday: dateInfo.isToday,
                  isCurrentMonth: dateInfo.isCurrentMonth,
                  isSaturday: dateInfo.isSaturday,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
