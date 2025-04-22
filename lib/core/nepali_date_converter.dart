import '../models/bs_date.dart';

class NepaliDateConverter {
  static final Map<int, List<int>> _bsMonthData = {
    // Example month data (year: [12 months each])
    2080: [30, 32, 31, 32, 31, 30, 30, 29, 30, 29, 30, 30],
    2081: [31, 31, 31, 32, 31, 30, 30, 29, 30, 29, 30, 30],
    // Add more years as needed
  };

  static final DateTime _baseAd = DateTime(2023, 4, 14); // 2080-01-01 BS
  static final BSDate _baseBs = BSDate(2080, 1, 1);

  static BSDate convertToBS(DateTime adDate) {
    int diffDays = adDate.difference(_baseAd).inDays;

    int year = _baseBs.year;
    int month = _baseBs.month;
    int day = _baseBs.day;

    while (diffDays > 0) {
      final monthDays = _bsMonthData[year]?[month - 1] ?? 30;

      if (day < monthDays) {
        day++;
      } else {
        day = 1;
        if (month < 12) {
          month++;
        } else {
          month = 1;
          year++;
        }
      }

      diffDays--;
    }

    return BSDate(year, month, day);
  }

  static int getDaysInMonth(int year, int month) {
    return _bsMonthData[year]?[month - 1] ?? 30;
  }
}
