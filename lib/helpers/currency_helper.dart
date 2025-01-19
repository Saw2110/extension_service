import '../extension_service.dart';

class CurrencyHelper {
  // Static method to format a number to amount with currency symbol and fraction digits
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

  // Static helper function to format the number with commas, currency symbol, and fraction digits
  static String _formatNumberToAmount({
    required double number,
    String currencySymbol = '\$',
    int fractionDigits = 2,
    FormatBy formatType = FormatBy.EN,
  }) {
    // Convert the number to string and split it into integer and decimal parts
    final parts = number.toStringAsFixed(fractionDigits).split('.');
    final integerPart = parts[0];
    final buffer = StringBuffer();

    // Format the integer part with commas depending on the format type
    final formattedInteger = formatType == FormatBy.NP
        ? _formatIntegerWithCommasNepali(integerPart)
        : _formatIntegerWithCommasEnglish(integerPart);

    // Add the currency symbol
    buffer.write(currencySymbol);
    buffer.write(formattedInteger);

    // Append the decimal part if it exists
    if (parts.length > 1) {
      buffer.write('.${parts[1]}');
    } else if (fractionDigits > 0) {
      // Append zero decimal places if no decimal part exists
      buffer.write('.${'0' * fractionDigits}');
    }

    return buffer.toString();
  }

  // Helper function to format the integer part with commas (English format, every 3 digits)
  static String _formatIntegerWithCommasEnglish(String integerPart) {
    final buffer = StringBuffer();
    final int length = integerPart.length;
    final lastThreeStart = length - 3;

    // Format the integer part with commas every three digits
    for (int i = 0; i < lastThreeStart; i++) {
      if (i > 0 && (lastThreeStart - i) % 3 == 0) {
        buffer.write(',');
      }
      buffer.write(integerPart[i]);
    }

    // Append the last 3 digits
    if (lastThreeStart >= 0) {
      if (buffer.isNotEmpty) buffer.write(',');
      buffer.write(integerPart.substring(lastThreeStart));
    }

    return buffer.toString();
  }

  // Helper function to format the integer part with commas (Nepali format, every 2 digits)
  static String _formatIntegerWithCommasNepali(String integerPart) {
    final buffer = StringBuffer();
    final int length = integerPart.length;
    final lastThreeStart = length - 3;

    // Format the leading part (before the last 3 digits) in groups of 2
    for (int i = 0; i < lastThreeStart; i++) {
      if (i > 0 && (lastThreeStart - i) % 2 == 0) {
        buffer.write(',');
      }
      buffer.write(integerPart[i]);
    }

    // Append the last 3 digits
    if (lastThreeStart >= 0) {
      if (buffer.isNotEmpty) buffer.write(',');
      buffer.write(integerPart.substring(lastThreeStart));
    }

    return buffer.toString();
  }
}
