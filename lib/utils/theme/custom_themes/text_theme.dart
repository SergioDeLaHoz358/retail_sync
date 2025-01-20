import 'package:flutter/material.dart';

class TTextTheme {
  TTextTheme._();

  static TextTheme lightTextTheme = TextTheme(
      //Tittle H1 H2 H3
      headlineLarge: const TextStyle().copyWith(
          fontSize: 34.0,
          fontWeight: FontWeight.w700,
          color: const Color.fromARGB(255, 252, 187, 107)),
      headlineMedium: const TextStyle().copyWith(
          fontSize: 24.0,
          fontWeight: FontWeight.bold,
          color: const Color.fromARGB(255, 252, 187, 107)),
      headlineSmall: const TextStyle().copyWith(
          fontSize: 24.0,
          fontWeight: FontWeight.bold,
          color: const Color.fromARGB(255, 252, 187, 107)),
      //Title
      titleLarge: const TextStyle().copyWith(
          fontSize: 16.0,
          fontWeight: FontWeight.w600,
          color: const Color.fromARGB(255, 252, 187, 107)),
      titleMedium: const TextStyle().copyWith(
          fontSize: 16.0,
          fontWeight: FontWeight.w600,
          color: const Color.fromARGB(255, 252, 187, 107)),
      titleSmall: const TextStyle().copyWith(
          fontSize: 16.0,
          fontWeight: FontWeight.w600,
          color: const Color.fromARGB(255, 252, 187, 107)),

      //Label
      labelLarge: const TextStyle().copyWith(
          fontSize: 14.0, fontWeight: FontWeight.normal, color: Colors.black),
      labelMedium: const TextStyle().copyWith(
          fontSize: 12.0, fontWeight: FontWeight.w700, color: Colors.black),
      //body
      bodyLarge: const TextStyle().copyWith(
          fontSize: 18.0, fontWeight: FontWeight.w500, color: Colors.black),
      bodyMedium: const TextStyle().copyWith(
          fontSize: 13.0, fontWeight: FontWeight.normal, color: Colors.black),
      bodySmall: const TextStyle().copyWith(
          fontSize: 12.0, fontWeight: FontWeight.normal, color: Colors.black));

  static TextTheme darkTextTheme = TextTheme(
      headlineLarge: const TextStyle().copyWith(
          fontSize: 34.0, fontWeight: FontWeight.w700, color: Colors.white),
      headlineMedium: const TextStyle().copyWith(
          fontSize: 24.0,
          fontWeight: FontWeight.bold,
          color: const Color.fromARGB(255, 252, 187, 107)),
      headlineSmall: const TextStyle().copyWith(
          fontSize: 24.0,
          fontWeight: FontWeight.bold,
          color: const Color.fromARGB(255, 252, 187, 107)),
      //Title
      titleLarge: const TextStyle().copyWith(
          fontSize: 16.0,
          fontWeight: FontWeight.w600,
          color: const Color.fromARGB(255, 252, 187, 107)),
      titleMedium: const TextStyle().copyWith(
          fontSize: 16.0,
          fontWeight: FontWeight.w600,
          color: const Color.fromARGB(255, 252, 187, 107)),
      titleSmall: const TextStyle().copyWith(
          fontSize: 16.0,
          fontWeight: FontWeight.w600,
          color: const Color.fromARGB(255, 252, 187, 107)),

      //Label
      labelLarge: const TextStyle().copyWith(
          fontSize: 14.0, fontWeight: FontWeight.normal, color: Colors.black),
      labelMedium: const TextStyle().copyWith(
          fontSize: 12.0, fontWeight: FontWeight.normal, color: Colors.black),
      //body
      bodyLarge: const TextStyle().copyWith(
          fontSize: 18.0, fontWeight: FontWeight.w500, color: Colors.white),
      bodyMedium: const TextStyle().copyWith(
          fontSize: 14.0, fontWeight: FontWeight.normal, color: Colors.white),
      bodySmall: const TextStyle().copyWith(
          fontSize: 12.0, fontWeight: FontWeight.normal, color: Colors.white));
}
