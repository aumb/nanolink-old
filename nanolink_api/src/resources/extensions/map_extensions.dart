extension MapX on Map<String, dynamic> {
  ///Iterates over [keys] and removes matching keys from the original map
  Map<String, dynamic> removeAll(List<String> keys) {
    for (final key in keys) {
      removeWhere((k, v) => key == k);
    }

    return this;
  }
}
