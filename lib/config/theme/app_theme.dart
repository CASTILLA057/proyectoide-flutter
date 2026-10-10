import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.blue,
  Colors.red,
  Colors.green,
];

class AppTheme {
  final int selectedColor;
  final bool isDark;

  AppTheme({this.selectedColor = 0, this.isDark = false})
      : assert(selectedColor >= 0 && selectedColor < colorList.length,
            'selectedColor debe estar entre 0 y ${colorList.length - 1}');

  ThemeData get get => ThemeData(
        colorSchemeSeed: colorList[selectedColor],
        brightness: isDark ? Brightness.dark : Brightness.light,
      );
}
