import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mini_app/core/theme/app_colors.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      brightness: Brightness.light,
      primaryColor: Colors.blue,
      scaffoldBackgroundColor: Colors.white,
      
      colorScheme: ColorScheme.fromSwatch().copyWith(
        secondary: Colors.blueAccent,
      ),
      textTheme: TextTheme(
        titleLarge: GoogleFonts.raleway(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: AppColors.navyColor,
        ),
        bodyMedium: GoogleFonts.raleway(
          fontSize: 14,
          color: AppColors.lightBlueColor,
          fontWeight: FontWeight.bold,
        ),
        bodySmall: GoogleFonts.raleway(
          fontSize: 12,
          color: AppColors.darkGrayColor,
        ),
      ),
      buttonTheme: const ButtonThemeData(
        buttonColor: Colors.blue,
        textTheme: ButtonTextTheme.primary,
      ),
    );
  }
}
