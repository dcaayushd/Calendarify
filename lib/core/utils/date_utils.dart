class DateUtilsNepali {
  static const List<String> nepaliMonths = [
    "बैशाख", "जेठ", "असार", "श्रावण", "भदौ", "असोज",
    "कार्तिक", "मंसिर", "पुष", "माघ", "फागुन", "चैत्र"
  ];

  static const List<String> nepaliWeekdays = [
    "आइत", "सोम", "मंगल", "बुध", "बिही", "शुक्र", "शनि"
  ];

  static String getNepaliMonthName(int index) => nepaliMonths[index - 1];
  static String getNepaliWeekdayName(int index) => nepaliWeekdays[index % 7];

  /// Simple example conversion for current English to Nepali date (static stub)
  static Map<String, dynamic> getCurrentNepaliDate() {
    final today = DateTime.now();
    // Stub conversion (you can improve with real data)
    final nepaliYear = today.year + 56;
    final nepaliMonth = today.month;
    final nepaliDay = today.day;

    return {
      'year': nepaliYear,
      'month': nepaliMonth,
      'day': nepaliDay,
    };
  }
}


class NepaliDateInfo {
  final int nepaliDay;
  final int gregorianDay;
  final bool isToday;
  final bool isCurrentMonth;

  NepaliDateInfo({
    required this.nepaliDay,
    required this.gregorianDay,
    required this.isToday,
    required this.isCurrentMonth,
  });
}

class DateUtilsCustom {
  static NepaliDateInfo getNepaliDateInfo(int index) {
    final nepaliDay = (index % 32) + 1;
    final gregorianDay = (index % 30) + 1;
    final isToday = index == 17;
    final isCurrentMonth = index >= 2 && index <= 32;

    return NepaliDateInfo(
      nepaliDay: nepaliDay,
      gregorianDay: gregorianDay,
      isToday: isToday,
      isCurrentMonth: isCurrentMonth,
    );
  }
}