import 'package:intl/intl.dart';

/// Fluffy Date Extension
extension FluffyDateExt on DateTime {
  /// dd MM yyyy -> 01 01 2022
  String dmy({
    bool toLocal = false,
    String? locale,
    String separator = ' ',
  }) {
    final df = DateFormat('dd${separator}MM${separator}yyyy', locale);
    var dt = this;
    if (toLocal) {
      dt = this.toLocal();
    }
    return df.format(dt);
  }

  /// dd MMM yyyy -> 01 Jan 2022
  String dMMMy({
    bool toLocal = false,
    String? locale,
    String separator = ' ',
  }) {
    final df = DateFormat('dd${separator}MMM${separator}yyyy', locale);
    var dt = this;
    if (toLocal) {
      dt = this.toLocal();
    }
    return df.format(dt);
  }

  /// dd MMMM yyyy -> 01 January 2022
  String dMMMMy({
    bool toLocal = false,
    String? locale,
    String separator = ' ',
  }) {
    final df = DateFormat('dd${separator}MMMM${separator}yyyy', locale);
    var dt = this;
    if (toLocal) {
      dt = this.toLocal();
    }
    return df.format(dt);
  }

  /// MMMM yyyy -> January 2022
  String mMMMy({
    bool toLocal = false,
    String? locale,
    String separator = ' ',
  }) {
    final df = DateFormat('MMMM${separator}yyyy', locale);
    var dt = this;
    if (toLocal) {
      dt = this.toLocal();
    }
    return df.format(dt);
  }
}
