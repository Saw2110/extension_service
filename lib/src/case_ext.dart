import '../extension_service.dart';

extension CaseExtensions on String {
  // 1. Convert the string to lowercase
  String toLowerCase() => this.toLowerCase();

  // 2. Convert the string to uppercase
  String toUpperCase() => this.toUpperCase();

  // 3. Convert the string to kebab case
  String get toKebabCase => replaceAll(' ', '-').toLowerCase();

  // 4. Convert the string to snake case
  String get toSnakeCase => replaceAll(' ', '_').toLowerCase();

  // 5. Convert the string to camel case
  String get toCamelCase => split(' ')
      .mapIndexed(
        (i, s) => i == 0 ? s.toLowerCase() : s.capitalizeFirstLetter(),
      )
      .join();

  // 6. Convert the string to pascal case
  String toPascalCase() {
    if (isEmpty) return '';
    final words = split(RegExp(r'\s+|_+|-+'));
    final pascalCaseWords = words.map((word) {
      if (word.isEmpty) return '';
      return word[0].toUpperCase() + word.substring(1);
    });
    return pascalCaseWords.join();
  }

  // 7. Convert to title case (capitalize first letter of each word)
  String toTitleCase() {
    if (isEmpty) return '';
    return split(' ')
        .map(
          (word) => word.isEmpty
              ? ''
              : word[0].toUpperCase() + word.substring(1).toLowerCase(),
        )
        .join(' ');
  }

  // 8. Convert to sentence case (capitalize first letter of sentence)
  String toSentenceCase() {
    if (isEmpty) return '';
    return this[0].toUpperCase() + substring(1).toLowerCase();
  }

  // 9. Convert to dot case
  String toDotCase() => replaceAll(' ', '.').toLowerCase();

  // 10. Convert to constant case (uppercase with underscores)
  String toConstantCase() => toUpperCase().replaceAll(' ', '_');

  // 11. Convert to path case (lowercase with slashes)
  String toPathCase() => toLowerCase().replaceAll(' ', '/');

  // 12. Convert to alternating case
  String toAlternatingCase() {
    return split('')
        .asMap()
        .map(
          (index, char) => MapEntry(
            index,
            index.isEven ? char.toLowerCase() : char.toUpperCase(),
          ),
        )
        .values
        .join();
  }

  // 13. Clean and normalize case (remove extra spaces and special characters)
  String normalizeCase() {
    return trim()
        .replaceAll(RegExp(r'\s+'), ' ')
        .replaceAll(RegExp(r'[^\w\s-]'), '');
  }

  // 14. Convert to header case (capitalize words and join with hyphens)
  String toHeaderCase() => split(' ')
      .map(
        (word) => word.isEmpty ? '' : word[0].toUpperCase() + word.substring(1),
      )
      .join('-');

  // 15. Convert to proper case (capitalize first letter of words except articles)
  String toProperCase() {
    final articles = [
      'a',
      'an',
      'the',
      'in',
      'on',
      'at',
      'for',
      'to',
      'of',
      'and',
      'or',
      'nor',
      'but',
      'so',
      'yet',
      'as',
      'by',
      'with',
      'about',
      'into',
      'through',
      'over',
      'after',
      'before',
      'under',
      'around',
      'along',
      'among',
      'against',
      'during',
      'without',
      'within',
      'between',
      'except',
    ];

    return split(' ')
        .asMap()
        .map(
          (index, word) => MapEntry(
            index,
            articles.contains(word.toLowerCase()) && index != 0
                ? word.toLowerCase()
                : word.isEmpty
                    ? ''
                    : word[0].toUpperCase() + word.substring(1).toLowerCase(),
          ),
        )
        .values
        .join(' ');
  }

  // 16. Convert multiple spaces to single space
  String normalizeSpaces() => replaceAll(RegExp(r'\s+'), ' ').trim();
}
