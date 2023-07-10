import 'package:flutter/material.dart';

const Color customColor = Color(0xFF461596);

const List<Color> colorThemes = [
  customColor,
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.yellow,
  Colors.orange,
  Colors.pink,
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0 && selectedColor < colorThemes.length,
            'Colors must be between 0 and ${colorThemes.length}');

  ThemeData theme() {
    return ThemeData(useMaterial3: true, colorSchemeSeed: colorThemes[2]);
  }
}
