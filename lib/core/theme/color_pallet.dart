import 'package:flutter/material.dart';

abstract class ColorPallet {
  //don't let use as mixin
  ColorPallet._();
  static Color primary = Colors.red.shade900;
  static Color surface = Colors.white;
}
