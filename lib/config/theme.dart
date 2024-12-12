import 'package:flutter/material.dart';

final List<Color> coloresTheme = [
  const Color.fromARGB(255, 37, 38, 54),
  Colors.white,
  const Color.fromARGB(255, 241, 249, 251),
  const Color(0XFF1ED760),
];

class MyTheme {
  final int eleccionColor;
  const MyTheme({
    required this.eleccionColor,
  });

  ThemeData theme() {
    return ThemeData(
      scaffoldBackgroundColor: coloresTheme[2],
      fontFamily: 'Poppins',
    );
  }
}
