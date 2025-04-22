import '../models/event_model.dart';
import '../models/tithi_model.dart';

class CalendarService {
  static List<Event> getEventsForMonth(int year, int month) {
    return [
      Event(
        title: 'New Year',
        description: 'Nepali New Year Celebration',
        date: DateTime(year, month, 1),
      ),
    ];
  }

  static List<Tithi> getTithisForMonth(int year, int month) {
    return [
      Tithi(name: 'एकादशी', date: DateTime(year, month, 11), isHoliday: true),
      Tithi(name: 'पूर्णिमा', date: DateTime(year, month, 15)),
    ];
  }
}
