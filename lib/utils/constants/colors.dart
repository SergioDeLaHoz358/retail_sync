import 'package:flutter/material.dart';

class CColors {
  CColors._();
  // App Basic Colors
  static const Color primaryColor = Color.fromRGBO(252, 187, 107, 100);
  static const Color secondaryColor = Colors.white;

  //Gradient Colors
  static const Gradient linerGradient = LinearGradient(
      begin: Alignment(0.0, 0.0),
      end: Alignment(0.707, -0.707),
      colors: [
        Color.fromRGBO(255, 185, 99, 1),
        Color.fromRGBO(219, 137, 36, 1)
      ]);

  // App Text Colors
  static const Color primaryTextColor = Color.fromRGBO(220, 162, 91, 0.612);
  static const Color secondaryTextColor = Color.fromRGBO(51, 51, 51, 95);
  static const Color tertiaryTextColor = Color.fromRGBO(204, 132, 43, 95);
  static const Color quaternaryTextColor = Color.fromRGBO(113, 65, 7, 100);

  // App Background Colors
  static const Color light = Colors.white;
  static const Color dark = Color.fromRGBO(57, 46, 44, 0.603);

  // Button Colors
  static const Color buttonPrimary = Color.fromRGBO(252, 187, 107, 100);
  static const Color buttonSecondary = Colors.white;
  static const Color buttonTertiary = Color.fromRGBO(81, 67, 50, 100);

  //Backgroud Container Colors
  static const Color lightContainer = Colors.white;
  static const Color darkContainer = Color.fromRGBO(71, 60, 58, 100);
  static const Color lightContainer2 = Color.fromRGBO(241, 241, 241, 100);

  // Border Colors
  static const Color lightBorder = Color.fromRGBO(252, 187, 107, 100);
  static const Color darkBorder = Color.fromRGBO(252, 187, 107, 100);

  // Error and Validation Colors
  static const Color error = Color.fromRGBO(121, 0, 0, 100);
  static const Color sucess = Color.fromRGBO(2, 153, 35, 100);
  static const Color warning = Color.fromRGBO(186, 173, 73, 100);

  // Neutral Shades
  static const Color neutralShade1 = Color.fromRGBO(252, 187, 107, 100);
  static const Color grey = Color.fromRGBO(160, 160, 160, 0.424);
}
