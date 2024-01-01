// Helper method for mapping with index
extension IndexedIterable<E> on Iterable<E> {
  Iterable<T> mapIndexed<T>(T Function(int index, E item) f) sync* {
    var index = 0;
    for (final item in this) {
      yield f(index, item);
      index = index + 1;
    }
  }
}
