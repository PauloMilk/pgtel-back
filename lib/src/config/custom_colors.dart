
import 'package:flutter/material.dart';

Map<int, Color> _swatchOpacity = {
  50: const Color.fromRGBO(4, 2, 138, .1),
  100: const Color.fromRGBO(4, 2, 138, .2),
  200: const Color.fromRGBO(4, 2, 138, .3),
  300: const Color.fromRGBO(4, 2, 138, .4),
  400: const Color.fromRGBO(4, 2, 138, .5),
  500: const Color.fromRGBO(4, 2, 138, .6),
  600: const Color.fromRGBO(4, 2, 138, .7),
  700: const Color.fromRGBO(4, 2, 138, .8),
  800: const Color.fromRGBO(4, 2, 138, .9),
  900: const Color.fromRGBO(4, 2, 138, 1)
};

abstract class CustomColors {
  static Color customContrastColor = Colors.red.shade700;

  static MaterialColor customSwatchColor =
      MaterialColor(0xFF04028A, _swatchOpacity);
}
