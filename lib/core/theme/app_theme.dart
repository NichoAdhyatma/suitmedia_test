import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_pallete.dart';

class AppTheme {
  static _inputBorder({
    Color borderColor = AppPallete.transparentColor,
    double width = 0,
  }) =>
      OutlineInputBorder(
        borderSide: BorderSide(
          color: borderColor,
          width: width,
        ),
        borderRadius: BorderRadius.circular(10),
      );

  static final theme = ThemeData(
    textTheme: GoogleFonts.poppinsTextTheme(),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        minimumSize: WidgetStateProperty.all(
          const Size(double.infinity, 48),
        ),
        padding: WidgetStateProperty.all(
          const EdgeInsets.symmetric(vertical: 10),
        ),
        backgroundColor: WidgetStateProperty.all(AppPallete.primaryColor),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppPallete.whiteColor,
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 8.0,
      ),
      border: _inputBorder(),
      enabledBorder: _inputBorder(),
      focusedBorder: _inputBorder(
        width: 2,
      ),
      hintStyle: GoogleFonts.poppins(
        color: AppPallete.greyColor,
        fontSize: 16,
      ),
      focusedErrorBorder: _inputBorder(
        borderColor: AppPallete.errorColor,
        width: 2,
      ),
      errorBorder: _inputBorder(
        borderColor: AppPallete.errorColor,
        width: 2,
      ),
    ),
  );
}
