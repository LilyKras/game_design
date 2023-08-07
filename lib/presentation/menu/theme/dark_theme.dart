import 'package:diella/presentation/menu/theme/theme_extensions.dart';
import 'package:flutter/material.dart';

ThemeData createDarkTheme() {
  return ThemeData(
    dialogTheme: const DialogTheme(
      backgroundColor: Color.fromRGBO(16, 9, 104, 1),
      contentTextStyle: TextStyle(color: Colors.white, fontSize: 20),
    ),
    textTheme: const TextTheme(
      bodySmall: TextStyle(color: Colors.white),
      titleMedium: TextStyle(color: Colors.white, fontSize: 24),
    ),
    iconButtonTheme: const IconButtonThemeData(
      style: ButtonStyle(iconColor: MaterialStatePropertyAll(Colors.white)),
    ),
    iconTheme: const IconThemeData(color: Colors.white),
    colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF100968)),
    useMaterial3: true,
    extensions: <ThemeExtension<dynamic>>[
      ThemeColors.dark,
      ThemeGradients.dark,
    ],
    appBarTheme:
        const AppBarTheme(backgroundColor: Color.fromRGBO(16, 9, 104, 1)),
  );
}
