import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData tema() {
  return ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey),
    textTheme: TextTheme(
      bodyMedium: GoogleFonts.montserrat(
        fontSize: 14,
      ),
      bodyLarge: GoogleFonts.montserrat(
        fontSize: 16,
      ),
      bodySmall: GoogleFonts.montserrat(
        fontSize: 12,
      ),
      headlineMedium: GoogleFonts.montserrat(
        fontSize: 30,
        fontWeight: FontWeight.w700,
      ),
      titleLarge: GoogleFonts.montserrat(),
      titleMedium: GoogleFonts.montserrat(),
      titleSmall: GoogleFonts.montserrat(),
    ),
  );
}
