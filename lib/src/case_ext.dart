import 'package:extension_service/src/helper_ext.dart';
import 'package:extension_service/src/string_ext.dart';

extension CaseExtensions on String {
  // 1. Convert the string to lowercase.
  String toLowerCase() => this.toLowerCase();

  // 2. Convert the string to uppercase.
  String toUpperCase() => this.toUpperCase();

  // 3. Convert the string to kebab case
  String get toKebabCase => replaceAll(' ', '-').toLowerCase();

  // 4. Convert the string to snake case
  String get toSnakeCase => replaceAll(' ', '_').toLowerCase();

  // 5. Convert the string to camel case
  String get toCamelCase => split(' ')
      .mapIndexed(
          (i, s) => i == 0 ? s.toLowerCase() : s.capitalizeFirstLetter())
      .join('');

  String toPascalCase() {
    if (isEmpty) return '';
    final words = split(RegExp(r'\s+|_+|-+'));
    final pascalCaseWords = words.map((word) {
      if (word.isEmpty) return '';
      return word[0].toUpperCase() + word.substring(1);
    });

    return pascalCaseWords.join();
  }
}
