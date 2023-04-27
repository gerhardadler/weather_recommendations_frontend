import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier {
  MaterialColor _primaryColor = Colors.blue;

  MaterialColor get primaryColor => _primaryColor;

  set primaryColor(MaterialColor primaryColor) {
    _primaryColor = primaryColor;
    notifyListeners();
  }
}
