extension DateTimeExtensions on DateTime {
  // 1. Check if the date is today
  bool get isToday => isSameDay(DateTime.now());

  // 2. Check if the date is yesterday
  bool get isYesterday =>
      isSameDay(DateTime.now().subtract(const Duration(days: 1)));

  // 3. Check if the date is tomorrow
  bool get isTomorrow => isSameDay(DateTime.now().add(const Duration(days: 1)));

  // 4. Check if the date is within the current week
  bool get isThisWeek {
    final now = DateTime.now();
    final startOfWeek = now.subtract(Duration(days: now.weekday - 1));
    final endOfWeek = startOfWeek.add(const Duration(days: 6));
    return isAfter(startOfWeek.subtract(const Duration(seconds: 1))) &&
        isBefore(endOfWeek.add(const Duration(days: 1)));
  }

  // 5. Check if the date is within the current month
  bool get isThisMonth =>
      month == DateTime.now().month && year == DateTime.now().year;

  // 6. Check if the date is within the current year
  bool get isThisYear => year == DateTime.now().year;

  // 7. Format the date as a short date string (MM/dd/yyyy)
  String get shortDateString => '$month/$day/$year';

  // 8. Format the date as a long date string (MMMM dd, yyyy)
  String get longDateString =>
      '${month == 1 ? 'January' : month == 2 ? 'February' : month == 3 ? 'March' : month == 4 ? 'April' : month == 5 ? 'May' : month == 6 ? 'June' : month == 7 ? 'July' : month == 8 ? 'August' : month == 9 ? 'September' : month == 10 ? 'October' : month == 11 ? 'November' : 'December'} $day, $year';

  // 9. Format the time as a 12-hour clock string (hh:mm a)
  String get twelveHourTimeString =>
      '$hourOf12HourClock:${minute < 10 ? '0$minute' : minute} ${hour < 12 ? 'AM' : 'PM'}';

  // 10. Format the time as a 24-hour clock string (HH:mm)
  String get twentyFourHourTimeString =>
      '$hour:${minute < 10 ? '0$minute' : minute}';

  // 11. Get the start of the day (00:00:00)
  DateTime get startOfDay => DateTime(year, month, day);

  // 12. Get the end of the day (23:59:59)
  DateTime get endOfDay => DateTime(year, month, day, 23, 59, 59);

  // 13. Get the start of the week (Sunday)
  DateTime get startOfWeek => subtract(Duration(days: weekday - 1));

  // 14. Get the end of the week (Saturday)
  DateTime get endOfWeek => add(Duration(days: 7 - weekday));

  // 15. Get the start of the month
  DateTime get startOfMonth => DateTime(year, month);

  // 16. Get the end of the month
  DateTime get endOfMonth => DateTime(year, month + 1, 0);

  // 17. Get the start of the year
  DateTime get startOfYear => DateTime(year);

  // 18. Get the end of the year
  DateTime get endOfYear => DateTime(year + 1, 0, 0);

  // 19. Add a specified number of days to the date
  DateTime addDays(int days) => add(Duration(days: days));

  // 20. Subtract a specified number of days from the date
  DateTime subtractDays(int days) => subtract(Duration(days: days));

  // 21. Add a specified number of months to the date
  DateTime addMonths(int months) => DateTime(year, month + months, day, hour,
      minute, second, millisecond, microsecond);

  // 22. Subtract a specified number of months from the date
  DateTime subtractMonths(int months) => addMonths(-months);

  // 23. Add a specified number of years to the date
  DateTime addYears(int years) => DateTime(
      year + years, month, day, hour, minute, second, millisecond, microsecond);

  // 24. Subtract a specified number of years from the date
  DateTime subtractYears(int years) => addYears(-years);

  // 25. Get the difference in days between two dates
  int differenceInDays(DateTime other) =>
      (startOfDay.difference(other.startOfDay).inMilliseconds /
              Duration.millisecondsPerDay)
          .round();

  // 26. Get the difference in months between two dates
  int differenceInMonths(DateTime other) =>
      (year - other.year) * 12 + (month - other.month);

  // 27. Get the difference in years between two dates
  int differenceInYears(DateTime other) => year - other.year;

  // 28. Check if two dates are on the same day
  bool isSameDay(DateTime other) =>
      year == other.year && month == other.month && day == other.day;

  // 29. Check if two dates are on the same month
  bool isSameMonth(DateTime other) =>
      year == other.year && month == other.month;

  // 30. Check if two dates are on the same year
  bool isSameYear(DateTime other) => year == other.year;

  // 31.
  int get hourOf12HourClock {
    final hour = this.hour % 12;
    return hour == 0 ? 12 : hour;
  }
}
