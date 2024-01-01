import 'dart:convert';

extension StringExtensions on String {
  // 1. Capitalize the first letter of the string.
  String capitalizeFirstLetter() =>
      isNotEmpty ? '${this[0].toUpperCase()}${substring(1)}' : '';

  // 2. Check if the string is a valid email address.
  bool isValidEmail() =>
      RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$').hasMatch(this);

  // 3. Check if the string is a valid URL.
  bool isValidUrl() => Uri.parse(this).isAbsolute;

  // 4. Remove leading and trailing whitespaces.
  String trim() => this.trim();

  // 7. Check if the string is empty or consists only of whitespaces.
  bool isBlank() => this.trim().isEmpty;

  // 8. Check if the string is not empty and not consists only of whitespaces.
  bool isNotBlank() => !isBlank();

  // 9. Replace the first occurrence of a substring.
  String replaceFirst(String from, String to) => this.replaceFirst(from, to);

  // 10. Replace all occurrences of a substring.
  String replaceAll(String from, String to) => this.replaceAll(from, to);

  // 11. Check if the string contains only numeric characters.
  bool isNumeric() => double.tryParse(this) != null;

  // 12. Reverse the characters in the string.
  String reverse() => split('').reversed.join();

  // 13. Check if the string is a palindrome.
  bool isPalindrome() => this == reverse();

  // 14. Limit the length of the string to a specified number of characters.
  String limitLength(int maxLength) =>
      length <= maxLength ? this : substring(0, maxLength);

  // 15. Convert the string to a list of characters.
  List<String> toCharList() => split('');

  // 16. Check if the string contains only alphabetic characters.
  bool isAlphabetic() => RegExp(r'^[a-zA-Z]+$').hasMatch(this);

  // 17. Convert the string to a double (if possible).
  double toDouble() => double.tryParse(this) ?? 0.0;

  // 18. Convert the string to an integer (if possible).
  int toInt() => int.tryParse(this) ?? 0;

  // 19. Check if the string is a valid phone number.
  bool isValidPhoneNumber() => RegExp(r'^\d{10}$').hasMatch(this);

  // 20. Extract numbers from the string.
  String extractNumbers() => this.replaceAll(RegExp(r'[^0-9]'), '');

  // 21. Replace spaces with underscores
  String replaceSpacesWithUnderscores() {
    return this.replaceAll(' ', '_');
  }

  // 22. Check if the string is a valid email address
  bool get isEmail =>
      RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$').hasMatch(this);

  // 23. Check if the string starts with a specific prefix
  bool startsWith(String prefix) => this.startsWith(prefix);

  // 24. Check if the string ends with a specific suffix
  bool endsWith(String suffix) => this.endsWith(suffix);

  // 25. Replace a substring with another string
  String replace(String oldString, String newString) =>
      this.replaceAll(oldString, newString);

  // 26. Get the first N characters of the string
  String firstNCharacters(int n) => length > n ? substring(0, n) : this;

  // 27. Get the last N characters of the string
  String lastNCharacters(int n) => length > n ? substring(length - n) : this;

  // 28. Check if the string contains only whitespace characters
  bool get isWhitespace => this.trim().isEmpty;

  // 29. Convert the string to title case
  String toTitleCase() {
    return split(' ')
        .map((word) =>
            word.isNotEmpty ? word[0].toUpperCase() + word.substring(1) : word)
        .join(' ');
  }

  // 30. Check if the string is a valid URL
  bool get isUrl => Uri.tryParse(this)?.isAbsolute ?? false;

  // 31. Check if the string is a valid JSON
  bool get isJson {
    try {
      json.decode(this);
      return true;
    } catch (e) {
      return false;
    }
  }

  // 32. Repeat the string N times
  String repeat(int times) => List.filled(times, this).join();

  // 33. Check if the string is a valid hexadecimal color code
  bool get isHexColor =>
      RegExp(r'^#?([0-9A-Fa-f]{3}|[0-9A-Fa-f]{6})$').hasMatch(this);

  // 34. Encode the string to Base64
  String get toBase64 => base64Encode(utf8.encode(this));

  // 35. Decode the string from Base64
  String get fromBase64 => String.fromCharCodes(base64Decode(this));

  // 36. Get the index of the first occurrence of a substring
  int indexOf(String substring) => this.indexOf(substring);

  // 37. Check if the string contains only alphanumeric characters
  bool get isAlphanumeric => RegExp(r'^[a-zA-Z0-9]+$').hasMatch(this);

  // 41. Convert the string to a list of words
  List<String> get words =>
      split(' ').where((word) => word.isNotEmpty).toList();
}
