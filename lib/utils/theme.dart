import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Themes {
  static final light = ThemeData.light().copyWith(
    // ignore: deprecated_member_use
    accentColor: Colors.red,
    primaryColor: Colors.red,
    brightness: Brightness.light,
    // ignore: use_full_hex_values_for_flutter_colors
    appBarTheme: const AppBarTheme(
        backgroundColor: Color(0xffF6F6F6),
        // ignore: use_full_hex_values_for_flutter_colors
        shadowColor: Color(0xff00000029),
        elevation: 3),
    textTheme: TextTheme(
        titleMedium:
            GoogleFonts.poppins(fontSize: 24, color: const Color(0xff686868))),
  );
  static final dark = ThemeData.dark().copyWith(
    // ignore: use_full_hex_values_for_flutter_colors
    appBarTheme: const AppBarTheme(
        backgroundColor: Color(0xff2E2E2E),
        // ignore: use_full_hex_values_for_flutter_colors
        shadowColor: Color(0xff00000029),
        elevation: 20),
    textTheme: TextTheme(
        titleMedium:
            GoogleFonts.poppins(fontSize: 24, color: const Color(0xffF1F1F1))),
  );
}
