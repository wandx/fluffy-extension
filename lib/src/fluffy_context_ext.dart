import 'package:flutter/material.dart';

/// Extension to handle various type of context states
extension FluffyContextExt on BuildContext {
  /// ScaffoldMessenger
  ScaffoldMessengerState get scaffoldMessenger => ScaffoldMessenger.of(this);

  /// Scaffold
  ScaffoldState get scaffold => Scaffold.of(this);

  /// TextTheme
  TextTheme get textTheme => Theme.of(this).textTheme;

  /// ColorScheme
  ColorScheme get colorScheme => Theme.of(this).colorScheme;

  /// Navigator
  NavigatorState get navigator => Navigator.of(this);

  /// MediaQuery
  MediaQueryData get mediaQuery => MediaQuery.of(this);

  /// Focus Scope
  FocusScopeNode get focusScope => FocusScope.of(this);
}
