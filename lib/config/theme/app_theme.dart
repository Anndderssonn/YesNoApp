import 'package:flutter/material.dart';

const Color _customColor = Color(0xFF7331DE);
const List<Color> _colorThemes = [
  _customColor,
  Colors.amberAccent,
  Colors.blue,
  Colors.cyan,
  Colors.deepOrange,
  Colors.lightGreenAccent,
  Colors.green,
  Colors.indigo,
  Colors.lightBlue,
  Colors.pinkAccent,
  Colors.teal,
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
    : assert(
        selectedColor >= 0 && selectedColor < _colorThemes.length,
        'Color must be between 0 and ${_colorThemes.length}',
      );

  ThemeData theme() {
    return ThemeData(colorSchemeSeed: _colorThemes[selectedColor]);
  }
}
