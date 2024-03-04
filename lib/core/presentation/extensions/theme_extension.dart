import 'package:flutter/material.dart';

extension ThemeExtension on BuildContext {
  ThemeData get appTheme => Theme.of(this);
}
