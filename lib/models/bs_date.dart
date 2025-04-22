class BSDate {
  final int year;
  final int month;
  final int day;

  BSDate(this.year, this.month, this.day);

  @override
  String toString() => '$year-$month-$day';
}
