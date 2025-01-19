import 'package:flutter/material.dart';

class TAppbarTheme {
  TAppbarTheme._();

  static AppBarTheme lightAppBarTheme = AppBarTheme(
    backgroundColor: Colors.transparent,
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    iconTheme: const IconThemeData(color: Colors.black, size: 24),
    actionsIconTheme: const IconThemeData(color: Colors.black, size: 24),
    titleTextStyle: TextStyle(
        fontSize: 18, color: Colors.black, fontWeight: FontWeight.w600),
  );

  static AppBarTheme darkAppBarTheme = AppBarTheme(
    backgroundColor: Colors.transparent,
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    iconTheme: const IconThemeData(color: Colors.black),
    actionsIconTheme: const IconThemeData(color: Colors.white),
    titleTextStyle: TextStyle(
        fontSize: 18, color: Colors.white, fontWeight: FontWeight.w600),
  );
}
