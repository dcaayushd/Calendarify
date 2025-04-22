import 'package:flutter/material.dart';
import '../../../../core/constants/app_colors.dart';

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
    return Container(
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
    );
  }
}