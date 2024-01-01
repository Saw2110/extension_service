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
}
