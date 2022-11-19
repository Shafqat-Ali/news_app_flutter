import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color gray500 = fromHex('#a5a5a5');

  static Color gray70060 = fromHex('#59616161');

  static Color gray901 = fromHex('#031d2f');

  static Color gray1007f = fromHex('#7ff5f5f5');

  static Color gray902 = fromHex('#121212');

  static Color redA100 = fromHex('#ff7f85');

  static Color gray900 = fromHex('#2d0505');

  static Color red500 = fromHex('#ff3a44');

  static Color gray300 = fromHex('#e0e0e0');

  static Color gray100 = fromHex('#eff0fa');

  static Color black90075 = fromHex('#75000000');

  static Color gray70059 = fromHex('#59626262');

  static Color black900 = fromHex('#000000');

  static Color bluegray40026 = fromHex('#268c8c8c');

  static Color gray6007e = fromHex('#7e818181');

  static Color lightBlueA700 = fromHex('#0080ff');

  static Color gray70075 = fromHex('#75626262');

  static Color whiteA700 = fromHex('#ffffff');

  static Color deepOrange100 = fromHex('#ffb2b6');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
