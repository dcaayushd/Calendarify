class DateUtilsNepali {
  static const List<String> nepaliMonths = [
    "बैशाख", "जेठ", "असार", "श्रावण", "भदौ", "असोज",
    "कार्तिक", "मंसिर", "पुष", "माघ", "फागुन", "चैत्र"
  ];

  static const List<String> nepaliWeekdays = [
    "आइतबार", "सोमबार", "मंगलबार", "बुधबार", "बिहीबार", "शुक्रबार", "शनिबार"
  ];

  static String getNepaliMonthName(int index) => nepaliMonths[(index - 1) % 12];
  static String getNepaliWeekdayName(int index) => nepaliWeekdays[index % 7];

  static String getNepaliDayWithWeekday(DateTime date) {
    final weekdayIndex = date.weekday % 7; // Sunday = 0
    return "${getNepaliWeekdayName(weekdayIndex)} (${getEnglishWeekdayName(date.weekday)})";
  }

  static String getEnglishWeekdayName(int index) {
    const english = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"];
    return english[index % 7];
  }

  static Map<String, dynamic> getCurrentNepaliDate() {
    final today = DateTime.now();

    // Simulated logic — in real cases, convert AD to BS using logic or data
    final nepaliYear = today.year + 56;
    final nepaliMonth = today.month;
    final nepaliDay = today.day;

    return {
      'year': nepaliYear,
      'month': nepaliMonth,
      'day': nepaliDay,
      'weekday': today.weekday % 7, // Sunday = 0
    };
  }

  static String convertToNepaliNumber(String number) {
    const english = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];
    const nepali = ['०', '१', '२', '३', '४', '५', '६', '७', '८', '९'];

    String converted = '';
    for (var i = 0; i < number.length; i++) {
      final index = english.indexOf(number[i]);
      if (index != -1) {
        converted += nepali[index];
      } else {
        converted += number[i];
      }
    }
    return converted;
  }
}

class NepaliDateInfo {
  final int nepaliDay;
  final int gregorianDay;
  final bool isToday;
  final bool isSaturday;
  final bool isCurrentMonth;

  NepaliDateInfo({
    required this.nepaliDay,
    required this.gregorianDay,
    required this.isToday,
    required this.isSaturday,
    required this.isCurrentMonth,
  });
}

class DateUtilsCustom {
  static NepaliDateInfo getNepaliDateInfo(DateTime date) {
    final today = DateTime.now();

    final isToday = date.day == today.day &&
                    date.month == today.month &&
                    date.year == today.year;

    final weekday = date.weekday % 7; // 0 = Sunday, 6 = Saturday
    final isSaturday = weekday == 6;

    final nepaliDay = date.day;
    final gregorianDay = date.day;
    final isCurrentMonth = true; // You can extend logic for previous/next months

    return NepaliDateInfo(
      nepaliDay: nepaliDay,
      gregorianDay: gregorianDay,
      isToday: isToday,
      isSaturday: isSaturday,
      isCurrentMonth: isCurrentMonth,
    );
  }
}
