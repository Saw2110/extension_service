extension BoolExtensions on bool {
  // 1. Toggle the boolean value
  bool toggle() => !this;

  // 2. Convert boolean to integer (1 for true, 0 for false)
  int toInt() => this ? 1 : 0;

  // 3. Convert boolean to string ('true' or 'false')
  String toStringValue() => toString();

  // 4. Return 'Yes' for true, 'No' for false
  String toYesNoString() => this ? 'Yes' : 'No';

  // 5. Return 'On' for true, 'Off' for false
  String toOnOffString() => this ? 'On' : 'Off';

  // 6. Return 'Enable' for true, 'Disable' for false
  String toEnableDisableString() => this ? 'Enable' : 'Disable';

  // 7. Return 'Active' for true, 'Inactive' for false
  String toActiveInactiveString() => this ? 'Active' : 'Inactive';

  // 8. Return '✓' for true, '✗' for false
  String toCheckmarkString() => this ? '✓' : '✗';

  // 9. Convert to custom string values
  String toCustomString({
    required String trueValue,
    required String falseValue,
  }) =>
      this ? trueValue : falseValue;

  // 10. Return integer with custom values
  int toCustomInt({
    int trueValue = 1,
    int falseValue = 0,
  }) =>
      this ? trueValue : falseValue;

  // 11. Return opposite boolean with a delay
  Future<bool> toggleDelayed([Duration? delay]) async {
    await Future.delayed(delay ?? const Duration(milliseconds: 100));
    return !this;
  }

  // 12. Convert to binary string
  String toBinaryString() => toInt().toString();

  // 13. Return success/failure string
  String toSuccessFailureString() => this ? 'Success' : 'Failure';

  // 14. Return allowed/denied string
  String toAllowedDeniedString() => this ? 'Allowed' : 'Denied';

  // 15. Return passed/failed string
  String toPassFailString() => this ? 'Passed' : 'Failed';
}
