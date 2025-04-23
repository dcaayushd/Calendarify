import 'package:flutter/material.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../core/utils/date_utils.dart';

class DateTile extends StatelessWidget {
  final int nepaliDay;
  final int gregorianDay;
  final bool isToday;
  final bool isCurrentMonth;
  final bool isSaturday;

  const DateTile({
    super.key,
    required this.nepaliDay,
    required this.gregorianDay,
    required this.isToday,
    required this.isCurrentMonth,
    required this.isSaturday,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: isToday ? Colors.blueAccent.withOpacity(0.2) : null,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: isCurrentMonth ? AppColors.gray : Colors.grey.shade300,
        ),
      ),
      child: FittedBox(
         fit: BoxFit.scaleDown,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              DateUtilsNepali.convertToNepaliNumber(nepaliDay.toString()),
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color:
                    isSaturday
                        ? AppColors.red
                        : (isCurrentMonth ? Colors.black : Colors.grey),
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              gregorianDay.toString(),
              style: TextStyle(
                fontSize: 12,
                color: isCurrentMonth ? Colors.black : Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
