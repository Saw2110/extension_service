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

  // 5. Check if the string is empty or consists only of whitespaces.
  bool isBlank() => this.trim().isEmpty;

  // 6. Check if the string is not empty and not consists only of whitespaces.
  bool isNotBlank() => !isBlank();

  // 7. Replace the first occurrence of a substring.
  String replaceFirst(String from, String to) => this.replaceFirst(from, to);

  // 8. Replace all occurrences of a substring.
  String replaceAll(String from, String to) => this.replaceAll(from, to);

  // 9. Check if the string contains only numeric characters.
  bool isNumeric() => double.tryParse(this) != null;

  // 10. Reverse the characters in the string.
  String reverse() => split('').reversed.join();

  // 11. Check if the string is a palindrome.
  bool isPalindrome() => this == reverse();

  // 12. Limit the length of the string to a specified number of characters.
  String limitLength(int maxLength) =>
      length <= maxLength ? this : substring(0, maxLength);

  // 13. Convert the string to a list of characters.
  List<String> toCharList() => split('');

  // 14. Check if the string contains only alphabetic characters.
  bool isAlphabetic() => RegExp(r'^[a-zA-Z]+$').hasMatch(this);

  // 15. Convert the string to a double (if possible).
  double toDouble() => double.tryParse(this) ?? 0.0;

  // 16. Convert the string to an integer (if possible).
  int toInt() => int.tryParse(this) ?? 0;

  // 17. Check if the string is a valid phone number.
  bool isValidPhoneNumber() => RegExp(r'^\d{10}$').hasMatch(this);

  // 18. Extract numbers from the string.
  String extractNumbers() => this.replaceAll(RegExp(r'[^0-9]'), '');

  // 19. Replace spaces with underscores
  String replaceSpacesWithUnderscores() {
    return this.replaceAll(' ', '_');
  }

  // 20. Check if the string is a valid email address
  bool get isEmail =>
      RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$').hasMatch(this);

  // 21. Check if the string starts with a specific prefix
  bool startsWith(String prefix) => this.startsWith(prefix);

  // 22. Check if the string ends with a specific suffix
  bool endsWith(String suffix) => this.endsWith(suffix);

  // 23. Replace a substring with another string
  String replace(String oldString, String newString) =>
      this.replaceAll(oldString, newString);

  // 24. Get the first N characters of the string
  String firstNCharacters(int n) => length > n ? substring(0, n) : this;

  // 25. Get the last N characters of the string
  String lastNCharacters(int n) => length > n ? substring(length - n) : this;

  // 26. Check if the string contains only whitespace characters
  bool get isWhitespace => this.trim().isEmpty;

  // 27. Convert the string to title case
  String toTitleCase() {
    return split(' ').map((word) {
      return word.isNotEmpty ? word[0].toUpperCase() + word.substring(1) : word;
    }).join(' ');
  }

  // 28. Check if the string is a valid URL
  bool get isUrl => Uri.tryParse(this)?.isAbsolute ?? false;

  // 29. Check if the string is a valid JSON
  bool get isJson {
    try {
      json.decode(this);
      return true;
    } catch (e) {
      return false;
    }
  }

  // 30. Repeat the string N times
  String repeat(int times) => List.filled(times, this).join();

  // 31. Check if the string is a valid hexadecimal color code
  bool get isHexColor =>
      RegExp(r'^#?([0-9A-Fa-f]{3}|[0-9A-Fa-f]{6})$').hasMatch(this);

  // 32. Encode the string to Base64
  String get toBase64 => base64Encode(utf8.encode(this));

  // 33. Decode the string from Base64
  String get fromBase64 => String.fromCharCodes(base64Decode(this));

  // 34. Get the index of the first occurrence of a substring
  int indexOf(String substring) => this.indexOf(substring);

  // 35. Check if the string contains only alphanumeric characters
  bool get isAlphanumeric => RegExp(r'^[a-zA-Z0-9]+$').hasMatch(this);

  // 46. Convert the string to a list of words
  List<String> get words =>
      split(' ').where((word) => word.isNotEmpty).toList();

  // 37. Returns the initials of the first and last name.
  String getNameInitial() {
    final nameParts = trim().split(RegExp(r'\s+'));
    if (nameParts.isEmpty) return '';

    final firstInitial =
        nameParts.first.isNotEmpty ? nameParts.first[0].toUpperCase() : '';
    final lastInitial = nameParts.length > 1 && nameParts.last.isNotEmpty
        ? nameParts.last[0].toUpperCase()
        : '';

    return '$firstInitial$lastInitial';
  }
}
