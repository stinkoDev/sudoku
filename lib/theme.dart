import 'package:flutter/material.dart';

const Color myPurple = Color(0xFFb200ff);
const Color myBlue = Color(0xFFBAF6FD);

class AppTheme {
  static final customLight = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: myBlue,
      brightness: Brightness.light,
    ),
  );

  static final customDark = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: myBlue,
      brightness: Brightness.dark,
    ),
  );
}
