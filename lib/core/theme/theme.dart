import 'package:flutter/material.dart';

import 'color_pallet.dart';

ThemeData appTheme = ThemeData(
    colorScheme: ColorScheme(
        primary: ColorPallet.primary,
        primaryVariant: Colors.yellow.shade800,
        secondary: Colors.blue.shade900,
        secondaryVariant: Colors.blue.shade700,
        surface: ColorPallet.surface,
        background: Colors.white,
        error: Colors.red.shade700,
        onPrimary: Colors.white,
        onSecondary: Colors.white,
        onSurface: Colors.black,
        onBackground: Colors.black,
        onError: Colors.white,
        brightness: Brightness.light));
