# Dart Extension Methods

This repository contains a set of useful extension methods for common types in Flutter Dart. These extensions enhance the functionality of standard classes, providing convenient methods for everyday tasks.

## Table of Contents

- [Introduction](#introduction)
- [Boolean Extensions](#boolean-extensions)
- [Case Extensions](#case-extensions)
- [DateTime Extensions](#datetime-extensions)
- [Flag Extensions](#flag-extensions)
- [Iterable Extensions](#iterable-extensions)
- [List Extensions](#list-extensions)
- [Map Extensions](#map-extensions)
- [Num Extensions](#num-extensions)
- [String Extensions](#string-extensions)
- [Contributions](#🚀 welcome-contributions! 🎉)

## Introduction

Dart extensions are a powerful feature that allows you to add methods to existing classes without modifying the original class. This repository provides a collection of useful extensions for common Dart types such as `String`, `num`, `List`, `Map`, and `DateTime`. These extensions make it easier to perform common tasks, improve code readability, and reduce boilerplate code.

## Boolean Extensions

Summarizing the `BooleanExtensions` functionality:

| **Method** | **Description** | **Example Usage** | **Output** |
|------------|----------------|-------------------|------------|
| `toggle()` | Toggles the boolean value. | `true.toggle()` | `false` |
| `toInt()` | Converts the boolean to an integer (`1` for true, `0` for false). | `true.toInt()` | `1` |
| `toStringValue()` | Converts the boolean to a string (`'true'` or `'false'`). | `false.toStringValue()` | `'false'` |
| `toYesNoString()` | Returns `'Yes'` for true and `'No'` for false. | `true.toYesNoString()` | `'Yes'` |
| `toOnOffString()` | Returns `'On'` for true and `'Off'` for false. | `false.toOnOffString()` | `'Off'` |
| `toEnableDisableString()` | Returns `'Enable'` for true and `'Disable'` for false. | `true.toEnableDisableString()` | `'Enable'` |
| `toActiveInactiveString()` | Returns `'Active'` for true and `'Inactive'` for false. | `false.toActiveInactiveString()` | `'Inactive'` |
| `toCheckmarkString()` | Returns `'✓'` for true and `'✗'` for false. | `true.toCheckmarkString()` | `'✓'` |
| `toCustomString()` | Converts to custom string values for true and false. | `true.toCustomString(trueValue: 'Start', falseValue: 'Stop')` | `'Start'` |
| `toCustomInt()` | Returns custom integer values for true and false. | `false.toCustomInt(trueValue: 5, falseValue: -5)` | `-5` |
| `toggleDelayed()` | Toggles the boolean value after a delay. | `await true.toggleDelayed(Duration(seconds: 1))` | `false` (after 1s) |
| `toBinaryString()` | Converts the boolean to a binary string (`"1"` or `"0"`). | `false.toBinaryString()` | `"0"` |
| `toSuccessFailureString()` | Returns `'Success'` for true and `'Failure'` for false. | `true.toSuccessFailureString()` | `'Success'` |
| `toAllowedDeniedString()` | Returns `'Allowed'` for true and `'Denied'` for false. | `false.toAllowedDeniedString()` | `'Denied'` |
| `toPassFailString()` | Returns `'Passed'` for true and `'Failed'` for false. | `true.toPassFailString()` | `'Passed'` |

## Case Extensions

Summarizing the `CaseExtensions` functionality:

| **Method** | **Description** | **Example Usage** | **Output** |
|---|---|---|---|
| `toLowerCase()` | Converts the string to lowercase. | `'Hello World'.toLowerCase()` | `'hello world'` |
| `toUpperCase()` | Converts the string to uppercase. | `'Hello World'.toUpperCase()` | `'HELLO WORLD'` |
| `toKebabCase` | Converts the string to kebab case (lowercase with hyphens). | `'Hello World'.toKebabCase` | `'hello-world'` |
| `toSnakeCase` | Converts the string to snake case (lowercase with underscores). | `'Hello World'.toSnakeCase` | `'hello_world'` |
| `toCamelCase` | Converts the string to camel case. | `'hello world'.toCamelCase` | `'helloWorld'` |
| `toPascalCase()` | Converts the string to pascal case. | `'hello world'.toPascalCase()` | `'HelloWorld'` |
| `toTitleCase()` | Capitalizes the first letter of each word. | `'hello world'.toTitleCase()` | `'Hello World'` |
| `toSentenceCase()` | Capitalizes the first letter of the sentence. | `'hello world'.toSentenceCase()` | `'Hello world'` |
| `toDotCase()` | Converts the string to dot case (lowercase with dots). | `'Hello World'.toDotCase()` | `'hello.world'` |
| `toConstantCase()` | Converts the string to constant case (uppercase with underscores). | `'Hello World'.toConstantCase()` | `'HELLO_WORLD'` |
| `toPathCase()` | Converts the string to path case (lowercase with slashes). | `'Hello World'.toPathCase()` | `'hello/world'` |
| `toAlternatingCase()` | Alternates the case of each character. | `'hello world'.toAlternatingCase()` | `'hElLo WoRlD'` |
| `normalizeCase()` | Cleans and normalizes case, removing extra spaces and special characters. | `'  Hello   @World!  '.normalizeCase()` | `'Hello World'` |
| `toHeaderCase()` | Capitalizes words and joins them with hyphens. | `'hello world'.toHeaderCase()` | `'Hello-World'` |
| `toProperCase()` | Capitalizes first letters of words except articles (e.g., `a`, `the`). | `'a quick brown fox jumps over the lazy dog'.toProperCase()` | `'A Quick Brown Fox Jumps over the Lazy Dog'` |
| `normalizeSpaces()` | Reduces multiple spaces to a single space. | `'  Hello    World  '.normalizeSpaces()` | `'Hello World'` |

## DateTime Extensions

Summarizing the `DateTimeExtensions` functionality:  

| **Method** | **Description** | **Example Usage** | **Output** |
|---|---|---|---|
| `isToday` | Checks if the date is today. | `DateTime.now().isToday` | `true` |
| `isYesterday` | Checks if the date is yesterday. | `DateTime.now().subtract(Duration(days: 1)).isYesterday` | `true` |
| `isTomorrow` | Checks if the date is tomorrow. | `DateTime.now().add(Duration(days: 1)).isTomorrow` | `true` |
| `isThisWeek` | Checks if the date is in the current week. | `DateTime.now().isThisWeek` | `true` |
| `isThisMonth` | Checks if the date is in the current month. | `DateTime.now().isThisMonth` | `true` |
| `isThisYear` | Checks if the date is in the current year. | `DateTime.now().isThisYear` | `true` |
| `shortDateString` | Formats the date as `MM/dd/yyyy`. | `DateTime.now().shortDateString` | `1/19/2025` |
| `longDateString` | Formats the date as `MMMM dd, yyyy`. | `DateTime.now().longDateString` | `January 19, 2025` |
| `twelveHourTimeString` | Formats the time as `hh:mm a`. | `DateTime.now().twelveHourTimeString` | `9:45 AM` |
| `twentyFourHourTimeString` | Formats the time as `HH:mm`. | `DateTime.now().twentyFourHourTimeString` | `09:45` |
| `startOfDay` | Gets the start of the day (00:00:00). | `DateTime.now().startOfDay` | `2025-01-19 00:00:00.000` |
| `endOfDay` | Gets the end of the day (23:59:59). | `DateTime.now().endOfDay` | `2025-01-19 23:59:59.000` |
| `startOfWeek` | Gets the start of the week (Sunday). | `DateTime.now().startOfWeek` | `2025-01-12 00:00:00.000` |
| `endOfWeek` | Gets the end of the week (Saturday). | `DateTime.now().endOfWeek` | `2025-01-18 23:59:59.000` |
| `startOfMonth` | Gets the start of the month. | `DateTime.now().startOfMonth` | `2025-01-01 00:00:00.000` |
| `endOfMonth` | Gets the end of the month. | `DateTime.now().endOfMonth` | `2025-01-31 23:59:59.000` |
| `startOfYear` | Gets the start of the year. | `DateTime.now().startOfYear` | `2025-01-01 00:00:00.000` |
| `endOfYear` | Gets the end of the year. | `DateTime.now().endOfYear` | `2025-12-31 23:59:59.000` |
| `addDays(days)` | Adds a specified number of days to the date. | `DateTime.now().addDays(5)` | `2025-01-24` |
| `subtractDays(days)` | Subtracts a specified number of days from the date. | `DateTime.now().subtractDays(5)` | `2025-01-14` |
| `addMonths(months)` | Adds a specified number of months to the date. | `DateTime.now().addMonths(2)` | `2025-03-19` |
| `subtractMonths(months)` | Subtracts a specified number of months from the date. | `DateTime.now().subtractMonths(2)` | `2024-11-19` |
| `addYears(years)` | Adds a specified number of years to the date. | `DateTime.now().addYears(1)` | `2026-01-19` |
| `subtractYears(years)` | Subtracts a specified number of years from the date. | `DateTime.now().subtractYears(1)` | `2024-01-19` |
| `differenceInDays(other)` | Gets the difference in days between two dates. | `DateTime.now().differenceInDays(DateTime(2025, 1, 1))` | `18` |
| `isWeekend(type)` | Checks if the date falls on a weekend. | `DateTime.now().isWeekend(FormatBy.EN)` | `true` (if Saturday or Sunday) |
| `isLeapYear` | Checks if the year is a leap year. | `DateTime(2024, 1, 1).isLeapYear` | `true` |
| `weekNumber` | Gets the week number of the year. | `DateTime.now().weekNumber` | `3` (for third week of the year) |
| `relativeTime` | Gets the relative time string (e.g., "2 hours ago"). | `DateTime.now().subtract(Duration(days: 2)).relativeTime` | `2 days ago` |
| `getAge` | Calculates the age from a birthdate. | `DateTime(2000, 1, 1).getAge` | `25` (in 2025) |
| `daysInMonth` | Gets the number of days in the current month. | `DateTime(2025, 2, 1).daysInMonth` | `28` |
| `remainingDaysInMonth` | Gets the remaining days in the current month. | `DateTime(2025, 1, 19).remainingDaysInMonth` | `12` |

## Flag Extensions

This `ConvertFlag` extension provides a range of utilities for converting, validating, and handling country codes and flag emojis. Below is a summary of the key features:

| **Method/Property** | **Description** | **Example Usage** | **Output** |
|---|---|---|---|
| `toFlag` | Converts a 2-letter country code to a flag emoji. | `'US'.toFlag` | 🇺🇸 |
| `isValidCountryCode` | Checks if the string is a valid 2-letter country code. | `'US'.isValidCountryCode` | `true` |
| `toFlagSafe(fallback)` | Converts a 2-letter country code to a flag emoji with a fallback for invalid codes. | `'XX'.toFlagSafe('N/A')` | `N/A` |
| `fromFlag` | Converts a flag emoji back to its corresponding 2-letter country code. | `'🇺🇸'.fromFlag` | `US` |
| `isFlag` | Checks if the string is a valid flag emoji. | `'🇺🇸'.isFlag` | `true` |
| `flagCodePoints` | Returns the Unicode code points of the flag emoji. | `'US'.flagCodePoints` | `[127482, 127480]` |
| `toMultiFlags` | Converts a comma-separated list of country codes to flag emojis. | `'US, CA, GB'.toMultiFlags` | 🇺🇸 🇨🇦 🇬🇧 |
| `isRegionFlag` | Checks if the string is a valid region flag emoji. | `'🇺🇸'.isRegionFlag` | `true` |
| `toFlagUnicode` | Returns the Unicode escape sequence for the flag emoji. | `'US'.toFlagUnicode` | `\u{1f1fa}\u{1f1f8}` |
| `toHtmlFlag` | Converts the country code to an HTML-compatible flag representation. | `'US'.toHtmlFlag` | `&#x1F1FA;&#x1F1F8;` |
| `normalizeCountryCode` | Validates and normalizes a country code to uppercase. | `'us'.normalizeCountryCode` | `US` |
| `isISOCountryCode` | Checks if the country code exists in the ISO 3166-1 alpha-2 standard. | `'US'.isISOCountryCode` | `true` |

### Key Notes

This extension is particularly useful for applications dealing with country codes, flags, and internationalization.

## Iterable Extensions

This `IndexedIterable` extension provides additional utility methods for working with `Iterable` collections by incorporating indices into the operations. Below is a summary of its features:

| **Method** | **Description** | **Example Usage** | **Output** |
|---|---|---|---|
| `mapIndexed` | Maps each element of the iterable to a new value using its index and item. | `[1, 2, 3].mapIndexed((index, item) => '$index:$item')` | `['0:1', '1:2', '2:3']` |
| `groupByIndexed` | Groups elements into a map based on a key selector function that takes both the index and the item. | `[10, 20, 30, 40].groupByIndexed((index, item) => index % 2)` | `{0: [10, 30], 1: [20, 40]}` |
| `elementAtOrDefault` | Retrieves the element at the specified index or returns a default value if the index is out of bounds. | `[1, 2, 3].elementAtOrDefault(5, -1)` | `-1` |
| `windowIndexed` | Creates sliding windows of a specified size over the elements of the iterable. | `[1, 2, 3, 4].windowIndexed(2)` | `[[1, 2], [2, 3], [3, 4]]` |

## List Extensions

Summarizing the `ListExtensions` functionality:

| **Method** | **Description** | **Example Usage** | **Output** |
|---|---|---|---|
| `isNullOrEmpty` | Checks if the list is null or empty. | `[1, 2, 3].isNullOrEmpty` | `false` |
| `isNotNullOrEmpty` | Checks if the list is not null or empty. | `[1, 2, 3].isNotNullOrEmpty` | `true` |
| `containsElement` | Checks if the list contains a specific element. | `[1, 2, 3].containsElement(2)` | `true` |
| `firstOrDefault` | Gets the first element or a default value if empty. | `[].firstOrDefault(0)` | `0` |
| `lastOrDefault` | Gets the last element or a default value if empty. | `[].lastOrDefault(0)` | `0` |
| `whereCondition` | Filters the list based on a condition. | `[1, 2, 3].whereCondition((e) => e > 1)` | `[2, 3]` |
| `mapTo` | Maps each element to a new value. | `[1, 2, 3].mapTo((e) => e * 2)` | `[2, 4, 6]` |
| `toSet` | Converts the list to a set. | `[1, 1, 2, 3].toSet()` | `{1, 2, 3}` |
| `sortBy` | Sorts the list in ascending order. | `[3, 1, 2].sortBy((e) => e)` | `[1, 2, 3]` |
| `sortByDescending` | Sorts the list in descending order. | `[3, 1, 2].sortByDescending((e) => e)` | `[3, 2, 1]` |
| `shuffled` | Shuffles the elements in the list. | `[1, 2, 3].shuffled` | Example: `[3, 1, 2]` |
| `all` | Checks if all elements satisfy a condition. | `[1, 2, 3].all((e) => e > 0)` | `true` |
| `any` | Checks if any element satisfies a condition. | `[1, 2, 3].any((e) => e > 2)` | `true` |
| `indexOfElement` | Gets the index of the first occurrence of an element. | `[1, 2, 3].indexOfElement(2)` | `1` |
| `lastIndexOfElement` | Gets the index of the last occurrence of an element. | `[1, 2, 3, 2].lastIndexOfElement(2)` | `3` |
| `removeFirstOccurrence` | Removes the first occurrence of an element. | `[1, 2, 3, 2].removeFirstOccurrence(2)` | `[1, 3, 2]` |
| `removeAllOccurrences` | Removes all occurrences of an element. | `[1, 2, 3, 2].removeAllOccurrences(2)` | `[1, 3]` |
| `distinct` | Gets the distinct elements in the list. | `[1, 2, 2, 3].distinct` | `[1, 2, 3]` |
| `firstN` | Gets the first N elements of the list. | `[1, 2, 3].firstN(2)` | `[1, 2]` |
| `lastN` | Gets the last N elements of the list. | `[1, 2, 3].lastN(2)` | `[2, 3]` |
| `chunk` | Splits the list into chunks of a specified size. | `[1, 2, 3, 4].chunk(2)` | `[[1, 2], [3, 4]]` |
| `isPalindrome` | Checks if the list is a palindrome. | `[1, 2, 1].isPalindrome` | `true` |
| `insertAt` | Inserts an element at a specific index. | `[1, 3].insertAt(1, 2)` | `[1, 2, 3]` |
| `removeAt` | Removes the element at a specific index. | `[1, 2, 3].removeAt(1)` | `[1, 3]` |
| `replaceAll` | Replaces all occurrences of an element with another. | `[1, 2, 2, 3].replaceAll(2, 4)` | `[1, 4, 4, 3]` |
| `rotateRight` | Rotates the list to the right by a number of positions. | `[1, 2, 3].rotateRight(1)` | `[3, 1, 2]` |
| `rotateLeft` | Rotates the list to the left by a number of positions. | `[1, 2, 3].rotateLeft(1)` | `[2, 3, 1]` |
| `takeWhileCondition` | Takes elements from the start while a condition is satisfied. | `[1, 2, 3].takeWhileCondition((e) => e < 3)` | `[1, 2]` |
| `skipWhileCondition` | Skips elements from the start while a condition is satisfied. | `[1, 2, 3].skipWhileCondition((e) => e < 3)` | `[3]` |
| `groupBy` | Groups elements by a key. | `[1, 2, 3, 4].groupBy((e) => e % 2 == 0 ? 'Even' : 'Odd')` | `{'Odd': [1, 3], 'Even': [2, 4]}` |
| `partition` | Partitions the list into two lists based on a condition. | `[1, 2, 3, 4].partition((e) => e % 2 == 0)` | `([2, 4], [1, 3])` |
| `duplicates` | Finds duplicate elements in the list. | `[1, 2, 2, 3].duplicates` | `[2]` |
| `splitWhen` | Splits the list when a condition is met. | `[1, 2, 3, 4].splitWhen((e) => e == 3)` | `[[1, 2], [3, 4]]` |

## Map Extensions

Summarizing the `MapExtensions` functionality:

| **Method** | **Description** | **Example Usage** | **Output** |
|---|---|---|---|
| `containsKey` | Checks if a key is present in the map. | `{1: 'one', 2: 'two'}.containsKey(2)` | `true` |
| `containsValue` | Checks if a value is present in the map. | `{1: 'one', 2: 'two'}.containsValue('three')` | `false` |
| `keysList` | Retrieves a list of keys in the map. | `{1: 'one', 2: 'two'}.keysList` | `[1, 2]` |
| `valuesList` | Retrieves a list of values in the map. | `{1: 'one', 2: 'two'}.valuesList` | `['one', 'two']` |
| `removeWhere` | Removes entries from the map based on a condition. | `{1: 'one', 2: 'two'}.removeWhere((key, value) => value == 'two')` | `{1: 'one'}` |
| `filter` | Filters entries based on a condition. | `{1: 'one', 2: 'two'}.filter((key, value) => key > 1)` | `{2: 'two'}` |
| `merge` | Merges two maps. | `{1: 'one'}.merge({2: 'two'})` | `{1: 'one', 2: 'two'}` |
| `firstKey` | Gets the first key matching a condition. | `{1: 'one', 2: 'two'}.firstKey((key, value) => value == 'two')` | `2` |
| `firstValue` | Gets the first value matching a condition. | `{1: 'one', 2: 'two'}.firstValue((key, value) => key == 2)` | `'two'` |
| `toJsonString` | Converts the map to a JSON string. | `{1: 'one', 2: 'two'}.toJsonString()` | `'{"1":"one","2":"two"}'` |
| `addIfAbsent` | Adds a new entry if the key does not exist in the map. | `{1: 'one'}.addIfAbsent(2, 'two')` | `{1: 'one', 2: 'two'}` |
| `updateValue` | Updates the value for a given key if the key exists. | `{1: 'one', 2: 'two'}.updateValue(2, 'updated')` | `{1: 'one', 2: 'updated'}` |

## Num Extensions

Summarizing the `NumExtensions` functionality:

| **Method** | **Description** | **Example Usage** | **Output** |
|------------|----------------|-------------------|------------|
| `toPercentageString` | Converts the number to a percentage string. | `0.25.toPercentageString()` | `'25.00%'` |
| `isEvenNumber` | Checks if the number is even. | `4.isEvenNumber` | `true` |
| `isOddNumber` | Checks if the number is odd. | `3.isOddNumber` | `true` |
| `clamp` | Clamps the number within a specified range. | `5.clamp(1, 10)` | `5` |
| `roundToDecimalPlaces` | Rounds the number to a specified number of decimal places. | `3.14159.roundToDecimalPlaces(2)` | `3.14` |
| `isCloseTo` | Checks if the number is within a specified tolerance of another number. | `5.isCloseTo(5.0000001)` | `true` |
| `toRadians` | Converts degrees to radians. | `180.toRadians` | `3.141592653589793` |
| `toDegrees` | Converts radians to degrees. | `3.141592653589793.toDegrees` | `180.0` |
| `limitToMax` | Limits the number to a maximum value. | `12.limitToMax(10)` | `10` |
| `limitToMin` | Limits the number to a minimum value. | `5.limitToMin(10)` | `10` |
| `toCurrencyString` | Converts the number to a currency formatted string. | `1234.56.toCurrencyString()` | `'$1,234.56'` |
| `isPrime` | Checks if the number is a prime number. | `7.isPrime` | `true` |
| `factors` | Generates a list of factors for the number. | `28.factors` | `[1, 2, 4, 7, 14, 28]` |
| `isPerfectSquare` | Checks if the number is a perfect square. | `16.isPerfectSquare` | `true` |
| `isPositive` | Checks if the number is positive. | `5.isPositive` | `true` |
| `isNegative` | Checks if the number is negative. | `-5.isNegative` | `true` |
| `toOrdinalString` | Converts the number to an ordinal string (e.g., 1st, 2nd). | `3.toOrdinalString()` | `'3rd'` |
| `toRomanNumeral` | Converts the number to a Roman numeral string. | `1999.toRomanNumeral()` | `'MCMXCIX'` |
| `isInRange` | Checks if the number is within a specified range (inclusive). | `5.isInRange(1, 10)` | `true` |
| `absoluteValue` | Returns the absolute value of the number. | Not provided in original | Not provided in original |

## String Extensions

Summarizing the `NumExtensions` functionality:

| **Method** | **Description** | **Example Usage** | **Output** |
|------------|----------------|-------------------|------------|
| `capitalizeFirstLetter` | Capitalizes the first letter of the string. | `'hello'.capitalizeFirstLetter()` | `'Hello'` |
| `isValidEmail` | Checks if the string is a valid email address. | `'test@example.com'.isValidEmail()` | `true` |
| `isValidUrl` | Checks if the string is a valid URL. | `'https://example.com'.isValidUrl()` | `true` |
| `trim` | Removes leading and trailing whitespaces. | `'  hello '.trim()` | `'hello'` |
| `isBlank` | Checks if the string is empty or consists only of whitespaces. | `'    '.isBlank` | `true` |
| `isNotBlank` | Checks if the string is not empty and not consists only of whitespaces. | `'hello'.isNotBlank` | `true` |
| `replaceFirst` | Replaces the first occurrence of a substring. | `'hello world'.replaceFirst('world', 'Dart')` | `'hello Dart'` |
| `replaceAll` | Replaces all occurrences of a substring. | `'hello world'.replaceAll('l', 'x')` | `'hexxo worxd'` |
| `isNumeric` | Checks if the string contains only numeric characters. | `'12345'.isNumeric` | `true` |
| `reverse` | Reverses the characters in the string. | `'hello'.reverse()` | `'olleh'` |
| `isPalindrome` | Checks if the string is a palindrome. | `'madam'.isPalindrome()` | `true` |
| `limitLength` | Limits the length of the string to a specified number of characters. | `'hello world'.limitLength(5)` | `'hello'` |
| `toCharList` | Converts the string to a list of characters. | `'hello'.toCharList()` | `['h', 'e', 'l', 'l', 'o']` |
| `isAlphabetic` | Checks if the string contains only alphabetic characters. | `'hello'.isAlphabetic()` | `true` |
| `toDouble` | Converts the string to a double (if possible). | `'3.14'.toDouble()` | `3.14` |
| `toInt` | Converts the string to an integer (if possible). | `'123'.toInt()` | `123` |
| `isValidPhoneNumber` | Checks if the string is a valid phone number. | `'1234567890'.isValidPhoneNumber()` | `true` |
| `extractNumbers` | Extracts numbers from the string. | `'abc123def456'.extractNumbers()` | `'123456'` |
| `replaceSpacesWithUnderscores` | Replaces spaces in the string with underscores. | `'hello world'.replaceSpacesWithUnderscores()` | `'hello_world'` |
| `isEmail` | Checks if the string is a valid email address. | `'test@example.com'.isEmail` | `true` |
| `startsWith` | Checks if the string starts with a specific prefix. | `'hello'.startsWith('he')` | `true` |
| `endsWith` | Checks if the string ends with a specific suffix. | `'hello'.endsWith('lo')` | `true` |
| `replace` | Replaces a substring with another string. | `'hello world'.replace('world', 'Dart')` | `'hello Dart'` |
| `firstNCharacters` | Gets the first N characters of the string. | `'hello world'.firstNCharacters(5)` | `'hello'` |
| `lastNCharacters` | Gets the last N characters of the string. | `'hello world'.lastNCharacters(5)` | `'world'` |
| `isWhitespace` | Checks if the string contains only whitespace characters. | `'    '.isWhitespace` | `true` |
| `toTitleCase` | Converts the string to title case (capitalizing the first letter of each word). | `'hello world'.toTitleCase()` | `'Hello World'` |
| `isUrl` | Checks if the string is a valid URL. | `'https://example.com'.isUrl` | `true` |
| `isJson` | Checks if the string is a valid JSON. | `'{"key": "value"}'.isJson` | `true` |
| `repeat` | Repeats the string N times. | `'hello'.repeat(3)` | `'hellohellohello'` |
| `isHexColor` | Checks if the string is a valid hexadecimal color code. | `'#ff5733'.isHexColor` | `true` |
| `toBase64` | Encodes the string to Base64. | `'hello'.toBase64` | `'aGVsbG8='` |
| `fromBase64` | Decodes the string from Base64. | `'aGVsbG8='fromBase64` | `'hello'` |
| `indexOf` | Gets the index of the first occurrence of a substring. | `'hello world'.indexOf('world')` | `6` |
| `isAlphanumeric` | Checks if the string contains only alphanumeric characters. | `'hello123'.isAlphanumeric` | `true` |
| `words` | Converts the string to a list of words. | `'hello world'.words` | `['hello', 'world']` |
| `getNameInitial` | Returns the initials of the first and last name. | `'John Doe'.getNameInitial()` | `'JD'` |

---
Feel free to use these extensions in your Flutter Dart projects to simplify and enhance your code!

## 🚀 Welcome Contributions! 🎉

Contributions are **open**! 💡 Feel free to contribute by:

- 🆕 **Adding more extensions**
- ✨ **Improving existing ones**
- 🐞 **Fixing bugs**
- 💭 **Suggesting new features**

Let’s build a comprehensive collection of **Dart extensions** together! 🤝 Your help is **highly appreciated**! 🙏
