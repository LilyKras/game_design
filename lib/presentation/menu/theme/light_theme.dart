import 'package:diella/presentation/menu/theme/theme_extensions.dart';
import 'package:flutter/material.dart';

ThemeData createLightTheme() {
  return ThemeData(
    dialogTheme: const DialogTheme(
      backgroundColor: Color.fromRGBO(181, 122, 130, 1),
      contentTextStyle: TextStyle(color: Colors.black, fontSize: 20),
    ),
    textTheme: const TextTheme(
      bodySmall: TextStyle(color: Colors.black),
      titleMedium: TextStyle(color: Colors.black, fontSize: 24),
    ),
    iconButtonTheme: const IconButtonThemeData(
      style: ButtonStyle(
        iconColor: MaterialStatePropertyAll(Colors.black),
      ),
    ),
    iconTheme: const IconThemeData(color: Colors.black),
    colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFFD58A94)),
    useMaterial3: true,
    brightness: Brightness.light,
    extensions: <ThemeExtension<dynamic>>[
      ThemeColors.light,
      ThemeGradients.light,
    ],
    appBarTheme: const AppBarTheme(
      backgroundColor: Color.fromRGBO(255, 221, 199, 1),
    ),
  );
}
