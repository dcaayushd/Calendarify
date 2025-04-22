class Tithi {
  final String name;
  final DateTime date;
  final bool isHoliday;

  Tithi({
    required this.name,
    required this.date,
    this.isHoliday = false,
  });
}
