extension IndexedIterable<E> on Iterable<E> {
  // 1. Map with index
  Iterable<T> mapIndexed<T>(T Function(int index, E item) f) sync* {
    var index = 0;
    for (final item in this) {
      yield f(index, item);
      index = index + 1;
    }
  }

  // 2. Group by with index
  Map<K, List<E>> groupByIndexed<K>(K Function(int index, E item) keySelector) {
    var index = 0;
    final map = <K, List<E>>{};
    for (final item in this) {
      final key = keySelector(index, item);
      (map[key] ??= []).add(item);
      index++;
    }
    return map;
  }

  // 3. Get element at index with default
  E elementAtOrDefault(int index, E defaultValue) {
    try {
      return elementAt(index);
    } catch (_) {
      return defaultValue;
    }
  }

  // 4. Window with index
  Iterable<List<E>> windowIndexed(int size) sync* {
    if (size <= 0) return;
    final list = toList();
    for (var i = 0; i <= list.length - size; i++) {
      yield list.sublist(i, i + size);
    }
  }
}
