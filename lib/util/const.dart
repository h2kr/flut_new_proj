import 'dart:ui';

import 'package:flutter/material.dart';

class Constants {
  static String appName = "HakEbak";
  static Color superGreen = Color(0xFF46FF64);
  static Color bg = Color(0xFF223344);
  static Color bars = Color(0xFF101820);
  static Color green = Colors.greenAccent;
  static Color white = Colors.white;
  static Color red = Colors.redAccent;
  static Color black = Color(0xFF141616);

  static String quantico = "Quantico";
  static String roboto = "Roboto";

  static ThemeData theme = ThemeData(
    backgroundColor: bg,
    primaryColor: bars,
    accentColor: black,
    scaffoldBackgroundColor: bg,
  );
}