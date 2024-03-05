void main() {
  TDate date = TDate.parse('12.02.2024');

  print('Original date: ${date.day}.${date.month}.${date.year}');

  date = date.addDays(7);
  print('Date after 7 days: ${date.day}.${date.month}.${date.year}');

  date = date.addMonths(2);
  print('Date after 2 months: ${date.day}.${date.month}.${date.year}');

  date = date.addYears(1);
  print('Date after 1 year: ${date.day}.${date.month}.${date.year}');
}

class TDate {
  int _day;
  int _month;
  int _year;

  TDate(this._day, this._month, this._year);

  int get day => _day;
  int get month => _month;
  int get year => _year;

  static TDate parse(String dateString) {
    List<String> parts = dateString.split('.');

    if (parts.length != 3) {
      throw FormatException('Invalid date format: $dateString');
    }

    int day = int.parse(parts[0]);
    int month = int.parse(parts[1]);
    int year = int.parse(parts[2]);

    return TDate(day, month, year);
  }

  TDate addDays(int days) {
    DateTime dateTime = DateTime(_year, _month, _day).add(Duration(days: days));
    return TDate(dateTime.day, dateTime.month, dateTime.year);
  }

  TDate addMonths(int months) {
    DateTime dateTime = DateTime(_year, _month, _day).add(Duration(days: 30 * months));
    return TDate(dateTime.day, dateTime.month, dateTime.year);
  }

  TDate addYears(int years) {
    DateTime dateTime = DateTime(_year, _month, _day).add(Duration(days: 365 * years));
    return TDate(dateTime.day, dateTime.month, dateTime.year);
  }
}