import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTheme {
  static final CustomTheme _singleton = CustomTheme._internal();

  factory CustomTheme() {
    return _singleton;
  }

  CustomTheme._internal();

  static const Color mainBlue = Color.fromARGB(255, 0, 12, 70);
  static const Color darkBlue = Color(0x153046FF);
  static const Color lightBlue = Color.fromRGBO(0, 153, 255, 1);
  static const Color white = Color.fromRGBO(255, 255, 255, 1);
  static const Color red = Color.fromRGBO(255, 1, 1, 1);
  static const Color green = Color.fromRGBO(0, 255, 0, 1);
  static const Color gray = Color.fromRGBO(139, 139, 139, 1);

  static OutlineInputBorder searchBarStyle = OutlineInputBorder(
    borderRadius: BorderRadius.circular(20),
    borderSide: const BorderSide(width: 0, style: BorderStyle.none),
  );

  static ThemeData get mainTheme {
    return ThemeData(
      primarySwatch: Colors.blue,
      hintColor: white,
      textTheme: TextTheme(
        displayLarge: GoogleFonts.domine(color: white),
        displayMedium: GoogleFonts.domine(color: white),
        bodyLarge: GoogleFonts.domine(color: white),
        bodyMedium: GoogleFonts.domine(color: white),
        bodySmall: GoogleFonts.domine(color: white),
        titleMedium: GoogleFonts.domine(color: white),
        titleSmall: GoogleFonts.domine(color: white),
        labelLarge: GoogleFonts.domine(color: white),
        labelSmall: GoogleFonts.domine(color: white),
      ),
      visualDensity: VisualDensity.adaptivePlatformDensity,
      inputDecorationTheme: const InputDecorationTheme(
        hintStyle: TextStyle(fontSize: 18, color: white),
        errorBorder: UnderlineInputBorder(borderSide: BorderSide(color: red)),
        border: UnderlineInputBorder(borderSide: BorderSide(color: green)),
        enabledBorder:
            UnderlineInputBorder(borderSide: BorderSide(color: white)),
        focusedBorder:
            UnderlineInputBorder(borderSide: BorderSide(color: white)),
        disabledBorder:
            UnderlineInputBorder(borderSide: BorderSide(color: gray)),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          minimumSize: const Size.fromHeight(50),
          // textStyle: const TextStyle(fontSize: 20, color: white),
        ),
      ),
      scaffoldBackgroundColor: const Color.fromARGB(255, 0, 12, 70),
    );
  }
}
