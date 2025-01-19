extension ConvertFlag on String {
  // 1. Convert String to flag
  String get toFlag {
    return (this).toUpperCase().replaceAllMapped(
          RegExp(r'[A-Z]'),
          (match) => String.fromCharCode(
            match.group(0)!.codeUnitAt(0) + 127397,
          ),
        );
  }

  // 2. Check if string is valid country code (2 letters)
  bool get isValidCountryCode => RegExp(r'^[A-Za-z]{2}$').hasMatch(this);

  // 3. Convert country code to flag with fallback
  String toFlagSafe(String fallback) {
    if (!isValidCountryCode) return fallback;
    return toFlag;
  }

  // 4. Convert flag emoji back to country code
  String get fromFlag {
    if (length != 4) return '';
    return codeUnits
        .map((unit) => String.fromCharCode(unit - 127397))
        .join()
        .toUpperCase();
  }

  // 5. Check if string is a flag emoji
  bool get isFlag {
    if (length != 4) return false;
    return RegExp(r'[\uD83C][\uDDE6-\uDDFF][\uD83C][\uDDE6-\uDDFF]')
        .hasMatch(this);
  }

  // 6. Get flag emoji code points
  List<int> get flagCodePoints {
    if (!isValidCountryCode) return [];
    return toFlag.codeUnits.toList();
  }

  // 7. Convert multiple country codes to flags (comma-separated)
  String get toMultiFlags {
    return split(',').map((code) => code.trim().toFlag).join(' ');
  }

  // 8. Check if string represents a valid region flag
  bool get isRegionFlag {
    if (length != 4) return false;
    final codePoints = codeUnits;
    return codePoints.every(
      (unit) => unit >= 127462 && unit <= 127487,
    ); // Regional indicator symbols
  }

  // 9. Get flag emoji unicode escape sequence
  String get toFlagUnicode {
    if (!isValidCountryCode) return '';
    return toFlag.codeUnits
        .map((unit) => '\\u{${unit.toRadixString(16)}}')
        .join();
  }

  // 10. Convert between flag formats
  String get toHtmlFlag => isValidCountryCode
      ? '&#x1F1${toUpperCase().codeUnits.map((u) => (u + 37).toRadixString(16)).join(';&#x1F1')};'
      : '';

  // 11. Validate and format country code
  String get normalizeCountryCode {
    if (!isValidCountryCode) return '';
    return toUpperCase();
  }

  // 12. Check if country code exists in ISO 3166-1 alpha-2
  bool get isISOCountryCode {
    const isoCountryCodes = {
      'AF',
      'AX',
      'AL',
      'DZ',
      'AS',
      'AD',
      'AO',
      'AI',
      'AQ',
      'AG',
      'AR',
      'AM',
      'AW',
      'AU',
      'AT',
      'AZ',
      'BS',
      'BH',
      'BD',
      'BB',
      'BY',
      'BE',
      'BZ',
      'BJ',
      'BM',
      'BT',
      'BO',
      'BQ',
      'BA',
      'BW',
      'BV',
      'BR',
      'IO',
      'BN',
      'BG',
      'BF',
      'BI',
      'CV',
      'KH',
      'CM',
      'CA',
      'KY',
      'CF',
      'TD',
      'CL',
      'CN',
      'CX',
      'CC',
      'CO',
      'KM',
      'CD',
      'CG',
      'CK',
      'CR',
      'CI',
      'HR',
      'CU',
      'CW',
      'CY',
      'CZ',
      'DK',
      'DJ',
      'DM',
      'DO',
      'EC',
      'EG',
      'SV',
      'GQ',
      'ER',
      'EE',
      'SZ',
      'ET',
      'FK',
      'FO',
      'FJ',
      'FI',
      'FR',
      'GF',
      'PF',
      'TF',
      'GA',
      'GM',
      'GE',
      'DE',
      'GH',
      'GI',
      'GR',
      'GL',
      'GD',
      'GP',
      'GU',
      'GT',
      'GG',
      'GN',
      'GW',
      'GY',
      'HT',
      'HM',
      'VA',
      'HN',
      'HK',
      'HU',
      'IS',
      'IN',
      'ID',
      'IR',
      'IQ',
      'IE',
      'IM',
      'IL',
      'IT',
      'JM',
      'JP',
      'JE',
      'JO',
      'KZ',
      'KE',
      'KI',
      'KP',
      'KR',
      'KW',
      'KG',
      'LA',
      'LV',
      'LB',
      'LS',
      'LR',
      'LY',
      'LI',
      'LT',
      'LU',
      'MO',
      'MG',
      'MW',
      'MY',
      'MV',
      'ML',
      'MT',
      'MH',
      'MQ',
      'MR',
      'MU',
      'YT',
      'MX',
      'FM',
      'MD',
      'MC',
      'MN',
      'ME',
      'MS',
      'MA',
      'MZ',
      'MM',
      'NA',
      'NR',
      'NP',
      'NL',
      'NC',
      'NZ',
      'NI',
      'NE',
      'NG',
      'NU',
      'NF',
      'MP',
      'NO',
      'OM',
      'PK',
      'PW',
      'PS',
      'PA',
      'PG',
      'PY',
      'PE',
      'PH',
      'PN',
      'PL',
      'PT',
      'PR',
      'QA',
      'MK',
      'RO',
      'RU',
      'RW',
      'RE',
      'BL',
      'SH',
      'KN',
      'LC',
      'MF',
      'PM',
      'VC',
      'WS',
      'SM',
      'ST',
      'SA',
      'SN',
      'RS',
      'SC',
      'SL',
      'SG',
      'SX',
      'SK',
      'SI',
      'SB',
      'SO',
      'ZA',
      'GS',
      'SS',
      'ES',
      'LK',
      'SD',
      'SR',
      'SJ',
      'SE',
      'CH',
      'SY',
      'TW',
      'TJ',
      'TZ',
      'TH',
      'TL',
      'TG',
      'TK',
      'TO',
      'TT',
      'TN',
      'TR',
      'TM',
      'TC',
      'TV',
      'UG',
      'UA',
      'AE',
      'GB',
      'UM',
      'US',
      'UY',
      'UZ',
      'VU',
      'VE',
      'VN',
      'VG',
      'VI',
      'WF',
      'EH',
      'YE',
      'ZM',
      'ZW',
    };
    return isoCountryCodes.contains(toUpperCase());
  }
}
