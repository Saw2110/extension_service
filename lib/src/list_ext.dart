extension ListExtensions<T> on List<T> {
  // 1. Check if the list is null or empty
  bool get isNullOrEmpty => isEmpty;

  // 2. Check if the list is not null and not empty
  bool get isNotNullOrEmpty => !this.isNullOrEmpty;

  // 3. Check if the list contains a specific element
  bool containsElement(T element) => contains(element);

  // 4. Get the first element in the list or a default value if the list is empty
  T firstOrDefault(T defaultValue) => isEmpty ? defaultValue : first;

  // 5. Get the last element in the list or a default value if the list is empty
  T lastOrDefault(T defaultValue) => isEmpty ? defaultValue : last;

  // 6. Filter the list based on a condition
  List<T> whereCondition(bool Function(T) condition) =>
      where(condition).toList();

  // 7. Map each element to a new value
  List<R> mapTo<R>(R Function(T) mapper) => map(mapper).toList();

  // 8. Convert the list to a set
  Set<T> toSet() => this.toSet();

  // 9. Sort the list in ascending order
  List<T> sortBy(Comparable Function(T) keySelector) {
    final copy = List.of(this);
    copy.sort((a, b) => keySelector(a).compareTo(keySelector(b)));
    return copy;
  }

  // 10. Sort the list in descending order
  List<T> sortByDescending(Comparable Function(T) keySelector) {
    final copy = List.of(this);
    copy.sort((a, b) => keySelector(b).compareTo(keySelector(a)));
    return copy;
  }

  // 11. Shuffle the elements in the list
  List<T> get shuffled => List.of(this)..shuffle();

  // 12. Check if all elements in the list satisfy a condition
  bool all(bool Function(T) condition) => every(condition);

  // 13. Check if any element in the list satisfies a condition
  bool any(bool Function(T) condition) => this.any(condition);

  // 14. Get the index of the first occurrence of an element
  int indexOfElement(T element) => indexOf(element);

  // 15. Get the index of the last occurrence of an element
  int lastIndexOfElement(T element) => lastIndexOf(element);

  // 16. Remove the first occurrence of an element in the list
  List<T> removeFirstOccurrence(T element) {
    final copy = List.of(this);
    copy.remove(element);
    return copy;
  }

  // 17. Remove all occurrences of an element in the list
  List<T> removeAllOccurrences(T element) {
    final copy = List.of(this);
    copy.removeWhere((e) => e == element);
    return copy;
  }

  // 18. Get the distinct elements in the list
  List<T> get distinct => this.toSet().toList();

  // 20. Get the first N elements of the list
  List<T> firstN(int n) => length > n ? sublist(0, n) : this;

  // 21. Get the last N elements of the list
  List<T> lastN(int n) => length > n ? sublist(length - n) : this;

  // 22. Split the list into chunks of a specified size
  List<List<T>> chunk(int size) {
    final chunks = <List<T>>[];
    for (var i = 0; i < length; i += size) {
      chunks.add(sublist(i, i + size < length ? i + size : length));
    }
    return chunks;
  }

  // 23. Check if the list is a palindrome
  bool get isPalindrome => List.of(this).reversed.toList() == this;

  // 24. Insert an element at a specific index in the list
  List<T> insertAt(int index, T element) {
    final copy = List.of(this);
    copy.insert(index, element);
    return copy;
  }

  // 25. Remove the element at a specific index in the list
  List<T> removeAt(int index) {
    final copy = List.of(this);
    copy.removeAt(index);
    return copy;
  }

  // 26. Replace all occurrences of a specified element in the list
  List<T> replaceAll(T oldElement, T newElement) {
    final copy = List.of(this);
    for (var i = 0; i < copy.length; i++) {
      if (copy[i] == oldElement) {
        copy[i] = newElement;
      }
    }
    return copy;
  }

  // 27. Rotate the list to the right by a specified number of positions
  List<T> rotateRight(int positions) {
    final copy = List.of(this);
    for (var i = 0; i < positions; i++) {
      copy.insert(0, copy.removeLast());
    }
    return copy;
  }

  // 28. Rotate the list to the left by a specified number of positions
  List<T> rotateLeft(int positions) {
    final copy = List.of(this);
    for (var i = 0; i < positions; i++) {
      copy.add(copy.removeAt(0));
    }
    return copy;
  }

  // 29. Take elements from the beginning of the list while a condition is satisfied
  List<T> takeWhileCondition(bool Function(T) condition) =>
      takeWhile(condition).toList();

  // 30. Skip elements from the beginning of the list while a condition is satisfied
  List<T> skipWhileCondition(bool Function(T) condition) =>
      skipWhile(condition).toList();
}
