import 'package:flutter/material.dart';
import 'date_tile.dart';
import '../../../../core/utils/date_utils.dart';

class CalendarGrid extends StatelessWidget {
  const CalendarGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        padding: const EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 7,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: 42,
        itemBuilder: (context, index) {
          final dateInfo = DateUtilsCustom.getNepaliDateInfo(index);
          return DateTile(
            nepaliDay: dateInfo.nepaliDay,
            gregorianDay: dateInfo.gregorianDay,
            isToday: dateInfo.isToday,
            isCurrentMonth: dateInfo.isCurrentMonth,
          );
        },
      ),
    );
  }
}