import '../extension_service.dart';

class CurrencyHelper {
  // This method formats a number into a currency amount with a currency symbol and fraction digits.
  // It supports both English and Nepali formats for the integer part.
  static String formatNumberToAmount({
    required double number,
    String currencySymbol = '\$',
    int fractionDigits = 2,
    FormatBy formatType = FormatBy.EN,
  }) {
    return _formatNumberToAmount(
      number: number,
      currencySymbol: currencySymbol,
      formatType: formatType,
      fractionDigits: fractionDigits,
    );
  }

  // This helper method formats the number with commas, the currency symbol, and fraction digits.
  // It handles both the integer and decimal parts of the number.
  static String _formatNumberToAmount({
    required double number,
    String currencySymbol = '\$',
    int fractionDigits = 2,
    FormatBy formatType = FormatBy.EN,
  }) {
    final parts = number.toStringAsFixed(fractionDigits).split('.');
    final integerPart = parts[0];
    final buffer = StringBuffer();

    final formattedInteger = formatType == FormatBy.NP
        ? _formatIntegerWithCommasNepali(integerPart)
        : _formatIntegerWithCommasEnglish(integerPart);

    buffer.write(currencySymbol);
    buffer.write(formattedInteger);

    if (parts.length > 1) {
      buffer.write('.${parts[1]}');
    } else if (fractionDigits > 0) {
      buffer.write('.${'0' * fractionDigits}');
    }

    return buffer.toString();
  }

  // This helper method formats the integer part with commas in English format (every 3 digits).
  static String _formatIntegerWithCommasEnglish(String integerPart) {
    final buffer = StringBuffer();
    final int length = integerPart.length;
    final lastThreeStart = length - 3;

    for (int i = 0; i < lastThreeStart; i++) {
      if (i > 0 && (lastThreeStart - i) % 3 == 0) {
        buffer.write(',');
      }
      buffer.write(integerPart[i]);
    }

    if (lastThreeStart >= 0) {
      if (buffer.isNotEmpty) buffer.write(',');
      buffer.write(integerPart.substring(lastThreeStart));
    }

    return buffer.toString();
  }

  // This helper method formats the integer part with commas in Nepali format (every 2 digits before the last 3).
  static String _formatIntegerWithCommasNepali(String integerPart) {
    final buffer = StringBuffer();
    final int length = integerPart.length;
    final lastThreeStart = length - 3;

    for (int i = 0; i < lastThreeStart; i++) {
      if (i > 0 && (lastThreeStart - i) % 2 == 0) {
        buffer.write(',');
      }
      buffer.write(integerPart[i]);
    }

    if (lastThreeStart >= 0) {
      if (buffer.isNotEmpty) buffer.write(',');
      buffer.write(integerPart.substring(lastThreeStart));
    }

    return buffer.toString();
  }
}
