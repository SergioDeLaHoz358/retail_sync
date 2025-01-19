import 'package:flutter/material.dart';

class TTextFieldTheme {
  TTextFieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: Colors.grey,
    suffixIconColor: Colors.grey,
    labelStyle: const TextStyle().copyWith(
        fontSize: 14.0, fontWeight: FontWeight.normal, color: Colors.black87),
    hintStyle:
        const TextStyle().copyWith(fontSize: 14.0, color: Colors.black54),
    errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.italic),
    floatingLabelStyle: const TextStyle().copyWith(color: Colors.black),
    border: const OutlineInputBorder().copyWith(
        borderSide: BorderSide(color: Colors.grey, width: 1.0),
        borderRadius: BorderRadius.circular(14)),
    enabledBorder: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(14.0),
        borderSide: BorderSide(color: Colors.grey, width: 1.0)),
    focusedBorder: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(14.0),
        borderSide: BorderSide(color: Colors.black12, width: 1.0)),
    errorBorder: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(14.0),
        borderSide: BorderSide(color: Colors.red, width: 1.0)),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(14.0),
        borderSide: BorderSide(color: Colors.orange, width: 2.0)),
  );
  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 2,
    prefixIconColor: Colors.grey,
    suffixIconColor: Colors.grey,
    labelStyle: const TextStyle().copyWith(
        fontSize: 14.0, fontWeight: FontWeight.normal, color: Colors.white),
    hintStyle: const TextStyle().copyWith(fontSize: 14.0, color: Colors.white),
    errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.italic),
    floatingLabelStyle: const TextStyle().copyWith(color: Colors.white),
    border: const OutlineInputBorder().copyWith(
        borderSide: BorderSide(color: Colors.grey, width: 1.0),
        borderRadius: BorderRadius.circular(14)),
    enabledBorder: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(14.0),
        borderSide: BorderSide(color: Colors.grey, width: 1.0)),
    focusedBorder: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(14.0),
        borderSide: BorderSide(color: Colors.black12, width: 1.0)),
    errorBorder: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(14.0),
        borderSide: BorderSide(color: Colors.red, width: 1.0)),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(14.0),
        borderSide: BorderSide(color: Colors.orange, width: 2.0)),
  );
}
