import 'dart:convert';

extension MapExtensions<Key, Value> on Map<Key, Value> {
  // 1. Check if a key is present in the map
  bool containsKey(Key key) => this.containsKey(key);

  // 2. Check if a value is present in the map
  bool containsValue(Value value) => this.containsValue(value);

  // 3. Get a list of keys in the map
  List<Key> get keysList => keys.toList();

  // 4. Get a list of values in the map
  List<Value> get valuesList => values.toList();

  // 5. Remove entries from the map based on a condition
  void removeWhere(bool Function(Key key, Value value) condition) {
    this.removeWhere((key, value) => condition(key, value));
  }

  // 6. Filter entries in the map based on a condition
  Map<Key, Value> filter(bool Function(Key key, Value value) condition) {
    final result = <Key, Value>{};
    forEach((key, value) {
      if (condition(key, value)) {
        result[key] = value;
      }
    });
    return result;
  }

  // 7. Merge two maps
  Map<Key, Value> merge(Map<Key, Value> other) {
    final result = Map<Key, Value>.from(this);
    result.addAll(other);
    return result;
  }

  // 8. Get the first key matching a condition
  Key? firstKey(bool Function(Key key, Value value) condition) {
    for (var entry in entries) {
      if (condition(entry.key, entry.value)) {
        return entry.key;
      }
    }
    return null;
  }

  // 9. Get the first value matching a condition
  Value? firstValue(bool Function(Key key, Value value) condition) {
    for (var entry in entries) {
      if (condition(entry.key, entry.value)) {
        return entry.value;
      }
    }
    return null;
  }

  // 10. Convert the map to a JSON string
  String toJsonString() {
    return json.encode(this);
  }

  // 11. Add a new entry if the key does not exist in the map
  void addIfAbsent(Key key, Value value) {
    if (!containsKey(key)) {
      this[key] = value;
    }
  }

  // 12. Update the value for a given key if the key exists
  void updateValue(Key key, Value value) {
    if (containsKey(key)) {
      this[key] = value;
    }
  }
}
