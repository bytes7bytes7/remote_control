extension SeparatedX<T> on List<T> {
  List<T> separated(T separator) {
    final result = <T>[];

    for (var i = 0; i < length; i++) {
      final e = this[i];

      result.add(e);

      if (i != length - 1) {
        result.add(separator);
      }
    }

    return result;
  }
}
