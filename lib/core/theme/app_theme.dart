import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

class AppTheme {
  static ThemeData get light {
    final textTheme = GoogleFonts.poppinsTextTheme().apply(
      bodyColor: AppColors.navy,
      displayColor: AppColors.navy,
    );

    return ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: AppColors.background,
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.blue,
        primary: AppColors.blue,
        secondary: AppColors.purple,
        surface: AppColors.background,
      ),
      textTheme: textTheme,
      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          minimumSize: const Size(0, 56),
          padding: const EdgeInsets.symmetric(horizontal: 28),
          textStyle: GoogleFonts.poppins(
            fontWeight: FontWeight.w800,
            fontSize: 16,
          ),
        ),
      ),
      chipTheme: ChipThemeData(
        showCheckmark: false,
        labelStyle: GoogleFonts.poppins(
          fontWeight: FontWeight.w700,
          fontSize: 14,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
        side: BorderSide.none,
        shape: const StadiumBorder(),
        selectedColor: AppColors.navy,
        backgroundColor: Colors.transparent,
        labelPadding: const EdgeInsets.symmetric(horizontal: 6),
      ),
      dialogTheme: DialogThemeData(
        backgroundColor: AppColors.background,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      ),
      snackBarTheme: const SnackBarThemeData(
        behavior: SnackBarBehavior.floating,
        backgroundColor: AppColors.navy,
        shape: StadiumBorder(),
      ),
    );
  }
}
