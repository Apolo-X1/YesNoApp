import 'package:flutter/material.dart';

const Color _customColor = Color(0xFF00FF00);
const List<Color> _colorThemes = [
  _customColor,
  Color(0xFF0000FF),
  Color(0xFFFF0000),
  Color(0xFF00FFFF),
  Color(0xFFFF00FF),
  Color(0xFFFFFF00),
  Color(0xFF000000),
];

class ThemeApp {
  final int selectedColor;

  ThemeApp({this.selectedColor = 0})
      : assert(selectedColor >= 0 && selectedColor <= _colorThemes.length,
            "selectedColor must be between 0 and ${_colorThemes.length - 1}");

  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorThemes[selectedColor],
    );
  }
}
