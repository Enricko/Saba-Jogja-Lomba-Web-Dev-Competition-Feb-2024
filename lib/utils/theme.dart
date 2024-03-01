import 'package:flutter/material.dart';

class Themes {
  final lightTheme = ThemeData.light().copyWith(
    brightness: Brightness.light,
    primaryColor: Colors.blue, // Or reference a suitable color palette
    textTheme: TextTheme(
      headlineSmall: TextStyle(
        color: Colors.black,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
      // ...other text styles
    ),
    // ...other ThemeData properties
  );
  final darkTheme = ThemeData.dark().copyWith(
    brightness: Brightness.dark,
    primaryColor: Colors.grey[800],
    textTheme: TextTheme(
      headlineSmall: TextStyle(
        color: Colors.white,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
      // ...other text styles with adjusted colors
    ),
    // ...other ThemeData properties with dark-mode adjustments
  );
}
