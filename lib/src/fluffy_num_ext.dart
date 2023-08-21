import 'dart:math';

import 'package:intl/intl.dart';

/// Fluffy Num Extension
extension FluffyNumExt on num {
  /// Currency format
  String currency({
    String? prefix,
    String? locale,
  }) {
    final n = NumberFormat('#,###', locale);
    return '${'$prefix ' ?? ''}${n.format(this)}';
  }

  /// Generate Random String
  String get ofRandomString {
    const chars = 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz';
    final random = Random.secure();
    final randomizer = Iterable.generate(
      toInt(),
      (_) => chars.codeUnitAt(random.nextInt(chars.length)),
    );

    return String.fromCharCodes(randomizer);
  }

  /// Generate Random Number
  String get ofRandomNumber {
    const chars = '1234567890';
    final random = Random.secure();
    final randomizer = Iterable.generate(
      toInt(),
      (_) => chars.codeUnitAt(random.nextInt(chars.length)),
    );
    return String.fromCharCodes(randomizer);
  }
}
