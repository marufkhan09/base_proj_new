import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final lightTheme = _buildLightTheme();
final darkTheme = _buildDarkTheme();

ThemeData _buildLightTheme() {
  var baseTheme = ThemeData();
  return baseTheme.copyWith(
    primaryColor: Colors.amber,
    hintColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: GoogleFonts.poppinsTextTheme(baseTheme.textTheme).copyWith(
      // Customize individual text styles here as needed
      displayLarge: GoogleFonts.poppins(
        fontSize: 30.0,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      displayMedium: GoogleFonts.poppins(
        fontSize: 25.0,
        fontWeight: FontWeight.w600,
        color: Colors.black87,
      ),
      displaySmall: GoogleFonts.poppins(
        fontSize: 20.0,
        fontWeight: FontWeight.w600,
        color: Colors.black87,
      ),
      // Add other customizations to text styles
    ),
    appBarTheme: AppBarTheme(
      color: Colors.black
          .withOpacity(0.5), // Semi-transparent black color for AppBar
      elevation: 0,
    ),
    // Other light mode properties
  );
}

ThemeData _buildDarkTheme() {
  var baseTheme = ThemeData.dark();
  return baseTheme.copyWith(
    primaryColor: Colors.blueAccent, // Customize as needed
    hintColor: Colors.greenAccent, // Customize as needed
    scaffoldBackgroundColor: Colors.black,
    textTheme: GoogleFonts.poppinsTextTheme(baseTheme.textTheme).copyWith(
      // Customize individual text styles here as needed
      displayLarge: GoogleFonts.poppins(
        fontSize: 30.0,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      displayMedium: GoogleFonts.poppins(
        fontSize: 25.0,
        fontWeight: FontWeight.w600,
        color: Colors.white70,
      ),
      displaySmall: GoogleFonts.poppins(
        fontSize: 20.0,
        fontWeight: FontWeight.w600,
        color: Colors.white70,
      ),
      // Add other customizations to text styles
    ),
    appBarTheme: AppBarTheme(
      color: Colors.black
          .withOpacity(0.5), // Semi-transparent black color for AppBar
      elevation: 0,
    ),
    // Other dark mode properties
  );
}
