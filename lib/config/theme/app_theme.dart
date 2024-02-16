import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.blue,
  Colors.teal,
  Colors.yellow,
  Colors.green,
  Colors.red,
  Colors.pink,
  Colors.purple,
  Colors.orange,
  Colors.pinkAccent,
  Colors.deepOrange,
  Colors.deepPurple
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 7})
      : assert(selectedColor >= 0, 'Select color must be great  then 0'),
        assert(selectedColor < colorList.length,
            'Select color must be less or equal than ${colorList.length - 1}');

  ThemeData getTheme() => ThemeData(
      useMaterial3: true,
      colorSchemeSeed: colorList[selectedColor],
      appBarTheme: const AppBarTheme(centerTitle: true));
}
