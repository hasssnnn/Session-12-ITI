// import 'package:flutter/material.dart' show Color, Colors;
import 'package:flutter/material.dart';

class AppColors {
  AppColors._();
  static const Color color1 = Color(0xFF4A249D);
  static const Color color2 = Color(0xFF009FBD);
  static const Color color3 = Colors.indigo;
  static Color borderColor = Colors.white.withOpacity(0.2);
  static const Color darkBackground = Color.fromRGBO(31, 31, 31, 1);
  static const Color buttonDarkBackground = Color.fromRGBO(41, 41, 41, 1);

  static const Color tableBorderColor = Color.fromRGBO(219, 221, 223, 1);
  static const Color tableTitleColor = Color.fromRGBO(128, 137, 146, 1);
  static const Color tableRowGreyColor = Color.fromRGBO(242, 243, 245, 1);

  static const Color openStatusColor = Color.fromRGBO(200, 229, 246, 1);
  static const Color doingStatusColor = Color.fromRGBO(246, 236, 202, 1);
  static const Color doneStatusColor = Color.fromRGBO(224, 247, 239, 1);
  static const Color canceledStatusColor = Color.fromRGBO(248, 182, 179, 1);

  static const List<Color> teamsCardColorsGradient = [
    Color.fromRGBO(39, 41, 41, 1),
    Color.fromRGBO(46, 47, 48, 1),
    Color.fromRGBO(51, 42, 45, 1),
    Color.fromRGBO(49, 39, 46, 1),
    Color.fromRGBO(49, 39, 46, 1),
  ];
  static const List<Color> teamsAvatarColors = [
    Color.fromRGBO(215, 228, 232, 1),
    Color.fromRGBO(232, 221, 217, 1),
    Color.fromRGBO(245, 212, 223, 1),
  ];

  static const Color shadowBlack = Color.fromRGBO(21, 23, 24, 1);
  static const Color vaniallaLatte = Color.fromRGBO(241, 231, 216, 1);
  static const Color vaniallaLatteHex = Color(0xFFf1e7d8);
}
