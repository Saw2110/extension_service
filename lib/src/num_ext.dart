import 'dart:math';

import '../extension_service.dart';

extension NumExtensions on num {
  // 1. Convert the number to a percentage string
  String toPercentageString({int fractionDigits = 2}) =>
      '${(this * 100).toStringAsFixed(fractionDigits)}%';

  // 2. Check if the number is even
  bool get isEvenNumber => this % 2 == 0;

  // 3. Check if the number is odd
  bool get isOddNumber => this % 2 != 0;

  // 4. Clamp the number within a specified range
  num clamp(num min, num max) => this.clamp(min, max);

  // 5. Round the number to a specified number of decimal places
  num roundToDecimalPlaces(int decimalPlaces) =>
      double.parse(toStringAsFixed(decimalPlaces));

  // 6. Check if the number is within a specified tolerance of another number
  bool isCloseTo(num other, {num tolerance = 1e-10}) =>
      (this - other).abs() < tolerance;

  // 7. Convert degrees to radians
  num get toRadians => this * (3.141592653589793 / 180.0);

  // 8. Convert radians to degrees
  num get toDegrees => this * (180.0 / 3.141592653589793);

  // 9. Limit the number to a maximum value
  num limitToMax(num max) => this < max ? this : max;

  // 10. Limit the number to a minimum value
  num limitToMin(num min) => this > min ? this : min;

  // 11. Convert the number to a currency format string
  String toCurrencyString({
    String currencySymbol = '\$',
    int fractionDigits = 2,
    FormatBy formatType = FormatBy.EN,
  }) {
    return CurrencyHelper.formatNumberToAmount(
      currencySymbol: currencySymbol,
      number: double.parse(toString()),
      formatType: formatType,
      fractionDigits: fractionDigits,
    );
  }

  // 12. Check if the number is a prime number
  bool get isPrime {
    if (this <= 1) return false;
    for (int i = 2; i <= sqrt(this); i++) {
      if (this % i == 0) return false;
    }
    return true;
  }

  // 13. Generate a list of factors for the number
  List<int> get factors {
    final factorsList = <int>[];
    for (int i = 1; i <= this; i++) {
      if (this % i == 0) factorsList.add(i);
    }
    return factorsList;
  }

  // 14. Check if the number is a perfect square
  bool get isPerfectSquare {
    final sqrtValue = sqrt(this);
    return sqrtValue == sqrtValue.floor();
  }

  // 15. Check if the number is positive
  bool get isPositive => this > 0;

  // 16. Check if the number is negative
  bool get isNegative => this < 0;

  // 17. Convert the number to an ordinal string (e.g., 1st, 2nd, 3rd)
  String toOrdinalString() {
    if (this % 100 >= 10 && this % 100 <= 20) {
      return '$this${'th'}';
    } else {
      final unit = this % 10;
      switch (unit) {
        case 1:
          return '$this${'st'}';
        case 2:
          return '$this${'nd'}';
        case 3:
          return '$this${'rd'}';
        default:
          return '$this${'th'}';
      }
    }
  }

  // 18. Convert the number to a Roman numeral string
  String toRomanNumeral() {
    if (this < 1 || this > 3999) {
      throw ArgumentError('Number must be between 1 and 3999');
    }

    final romanNumeralValues = {
      1000: 'M',
      900: 'CM',
      500: 'D',
      400: 'CD',
      100: 'C',
      90: 'XC',
      50: 'L',
      40: 'XL',
      10: 'X',
      9: 'IX',
      5: 'V',
      4: 'IV',
      1: 'I',
    };

    var result = '';
    var remaining = this;

    for (final value in romanNumeralValues.keys) {
      while (remaining >= value) {
        result += romanNumeralValues[value]!;
        remaining -= value;
      }
    }

    return result;
  }

  // 19. Check if the number is within a range (inclusive)
  bool isInRange(num start, num end) => this >= start && this <= end;

  // 20. Return the absolute value of the number
  num get absoluteValue => abs();

  // 21. Convert the number to a hexadecimal string
  // String toHexString() => '0x${this.toRadixString(16)}';
  String toHexString() {
    if (this is int || this is BigInt) {
      return '0x${(this as int).toRadixString(16)}';
    } else {
      throw UnsupportedError(
        "toHexString is only supported for int or BigInt.",
      );
    }
  }

  // 22. Convert the number to a binary string
  // String toBinaryString() => '0b${this.toRadixString(2)}';
  String toBinaryString() {
    if (this is int || this is BigInt) {
      return '0x${(this as int).toRadixString(2)}';
    } else {
      throw UnsupportedError(
        "toHexString is only supported for int or BigInt.",
      );
    }
  }

  // 23. Convert the number to a string with commas for thousands separator
  // @Deprecated(
  //   'dont use as the same task is done by .toCurrencyString()',
  // )
  // // String withCommas() => NumberFormat('#,##0').format(this);
  // String withCommas({
  //   String currencySymbol = '\$',
  //   int fractionDigits = 2,
  //   FormatBy formatType = FormatBy.EN,
  // }) {
  //   return CurrencyHelper.formatNumberToAmount(
  //     currencySymbol: currencySymbol,
  //     number: double.parse(toString()),
  //     formatType: formatType,
  //     fractionDigits: fractionDigits,
  //   );
  // }

  // 24. Calculate the average of the number and another number
  num average(num other) => (this + other) / 2;

  // 25. Check if the number is between two values (exclusive)
  bool isBetweenExclusive(num start, num end) => this > start && this < end;

  // 26. Calculate the factorial of the number
  num get factorial {
    if (this < 0) {
      throw ArgumentError('Factorial is not defined for negative numbers');
    }
    return this == 0 ? 1 : this * (this - 1).factorial;
  }

  // 27. Calculate the greatest common divisor (GCD) with another number
  num gcd(num other) {
    if (other == 0) return abs();
    return other.gcd(this % other);
  }

  // 28. Calculate the least common multiple (LCM) with another number
  num lcm(num other) => (this * other).abs() ~/ gcd(other);

  // 29. Round the number to the nearest multiple of another number
  num roundToNearest(num multiple) => (this / multiple).round() * multiple;

  // 30. Calculate the square root of the number
  num get squareRoot => sqrt(this);
}
