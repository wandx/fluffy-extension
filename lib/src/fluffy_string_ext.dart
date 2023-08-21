/// Fluffy String Extension
extension FluffyStringExt on String {
  /// Build initial from given string
  String get initial {
    return split(' ').map((e) => e.substring(0, 1)).join().toUpperCase();
  }
}
