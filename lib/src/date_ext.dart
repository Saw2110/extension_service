import '../extension_service.dart';


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
  String get longDateString {
    const months = [
      'January',
      'February',
      'March',
      'April',
      'May',
      'June',
      'July',
      'August',
      'September',
      'October',
      'November',
      'December',
    ];
    return '${months[month - 1]} $day, $year';
  }

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
  DateTime addMonths(int months) => DateTime(
        year,
        month + months,
        day,
        hour,
        minute,
        second,
        millisecond,
        microsecond,
      );

  // 22. Subtract a specified number of months from the date
  DateTime subtractMonths(int months) => addMonths(-months);

  // 23. Add a specified number of years to the date
  DateTime addYears(int years) => DateTime(
        year + years,
        month,
        day,
        hour,
        minute,
        second,
        millisecond,
        microsecond,
      );

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
  int get hourOf12HourClock => hour % 12 == 0 ? 12 : hour % 12;

  // 32. Check if date is weekend
  bool isWeekend(FormatBy type) => type == FormatBy.EN
      ? (weekday == DateTime.saturday || weekday == DateTime.sunday)
      : (weekday == DateTime.saturday);

  // 33. Check if date is weekday
  bool isWeekday(FormatBy type) => !isWeekend(type);

  // 34. Get quarter of year (1-4)
  int get quarter => ((month - 1) ~/ 3) + 1;

  // 35. Check if year is leap year
  bool get isLeapYear => year % 4 == 0 && (year % 100 != 0 || year % 400 == 0);

  // 36. Get week number in year
  int get weekNumber {
    final firstDayOfYear = DateTime(year);
    final daysOffset = firstDayOfYear.weekday - 1;
    final firstWeekDay = firstDayOfYear.subtract(Duration(days: daysOffset));
    final inDays = difference(firstWeekDay).inDays;
    return (inDays / 7).ceil();
  }

  // 37. Format date with custom pattern
  String format(String pattern) {
    return pattern
        .replaceAll('yyyy', year.toString())
        .replaceAll('MM', month.toString().padLeft(2, '0'))
        .replaceAll('dd', day.toString().padLeft(2, '0'))
        .replaceAll('HH', hour.toString().padLeft(2, '0'))
        .replaceAll('mm', minute.toString().padLeft(2, '0'))
        .replaceAll('ss', second.toString().padLeft(2, '0'));
  }

  // 38. Get relative time string
  String get relativeTime {
    final now = DateTime.now();
    final difference = now.difference(this);

    if (difference.inDays > 365) {
      return '${(difference.inDays / 365).floor()} years ago';
    } else if (difference.inDays > 30) {
      return '${(difference.inDays / 30).floor()} months ago';
    } else if (difference.inDays > 0) {
      return '${difference.inDays} days ago';
    } else if (difference.inHours > 0) {
      return '${difference.inHours} hours ago';
    } else if (difference.inMinutes > 0) {
      return '${difference.inMinutes} minutes ago';
    } else {
      return 'just now';
    }
  }

  // 39. Get days in month
  int get daysInMonth {
    return DateTime(year, month + 1, 0).day;
  }

  // 40. Get remaining days in month
  int get remainingDaysInMonth => daysInMonth - day;

  // 41. Check if date is between two other dates
  bool isBetween(DateTime start, DateTime end) =>
      isAfter(start) && isBefore(end);

  // 42. Get age from birthdate
  int get getAge {
    final now = DateTime.now();
    int age = now.year - year;
    if (now.month < month || (now.month == month && now.day < day)) {
      age--;
    }
    return age;
  }

  // 43. Convert to UTC
  DateTime toUtc() => DateTime.utc(
        year,
        month,
        day,
        hour,
        minute,
        second,
        millisecond,
        microsecond,
      );
}
