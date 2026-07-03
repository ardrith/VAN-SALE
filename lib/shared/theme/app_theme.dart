import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static const _blue   = Color(0xFF2563EB); // primary accent – sky blue
  static const _navy   = Color(0xFF1E3A5F); // deep text / header tint
  static const _green  = Color(0xFF059669);
  static const _red    = Color(0xFFDC2626);

  // Public tokens used across screens
  static const kBlue    = _blue;
  static const kNavy    = _navy;
  static const kGreen   = _green;
  static const kRed     = _red;
  static const kSurface = Color(0xFFF0F4F8); // very light blue-grey page bg
  static const kCard    = Colors.white;

  // Light tints for icon containers
  static const kBlueTint  = Color(0xFFEFF6FF);
  static const kGreenTint = Color(0xFFECFDF5);
  static const kRedTint   = Color(0xFFFFF1F2);
  static const kSlate     = Color(0xFF64748B); // secondary text

  static ThemeData get light {
    final cs = ColorScheme.fromSeed(
      seedColor: _blue,
      primary: _blue,
      secondary: _navy,
      tertiary: _green,
      error: _red,
      brightness: Brightness.light,
      surface: Colors.white,
    );

    final base = GoogleFonts.bricolageGrotesqueTextTheme();

    return ThemeData(
      useMaterial3: true,
      colorScheme: cs,
      scaffoldBackgroundColor: kSurface,
      textTheme: base.copyWith(
        headlineLarge:  base.headlineLarge?.copyWith(color: _navy, fontWeight: FontWeight.w800),
        headlineMedium: base.headlineMedium?.copyWith(color: _navy, fontWeight: FontWeight.w700),
        headlineSmall:  base.headlineSmall?.copyWith(color: _navy, fontWeight: FontWeight.w700),
        titleLarge:     base.titleLarge?.copyWith(color: _navy, fontWeight: FontWeight.w700),
        titleMedium:    base.titleMedium?.copyWith(color: _navy, fontWeight: FontWeight.w600),
        titleSmall:     base.titleSmall?.copyWith(color: _navy, fontWeight: FontWeight.w600),
        bodyLarge:      base.bodyLarge?.copyWith(color: _navy),
        bodyMedium:     base.bodyMedium?.copyWith(color: const Color(0xFF334155)),
        bodySmall:      base.bodySmall?.copyWith(color: kSlate),
        labelLarge:     base.labelLarge?.copyWith(color: _navy, fontWeight: FontWeight.w600),
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.white,
        foregroundColor: _navy,
        elevation: 0,
        scrolledUnderElevation: 0.5,
        shadowColor: Colors.black12,
        centerTitle: false,
        titleTextStyle: GoogleFonts.bricolageGrotesque(
          fontSize: 18, fontWeight: FontWeight.w800, color: _navy),
        iconTheme: const IconThemeData(color: _navy),
      ),
      cardTheme: CardThemeData(
        elevation: 0,
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        margin: EdgeInsets.zero,
      ),
      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          backgroundColor: _blue,
          foregroundColor: Colors.white,
          minimumSize: const Size(double.infinity, 52),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          textStyle: GoogleFonts.bricolageGrotesque(fontSize: 15, fontWeight: FontWeight.w700),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: _blue,
          minimumSize: const Size(double.infinity, 52),
          side: const BorderSide(color: _blue, width: 1.5),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          textStyle: GoogleFonts.bricolageGrotesque(fontSize: 15, fontWeight: FontWeight.w700),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: const Color(0xFFF8FAFC),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Color(0xFFCBD5E1)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Color(0xFFCBD5E1)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: _blue, width: 2),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        hintStyle: const TextStyle(color: Color(0xFF94A3B8), fontSize: 14),
        prefixIconColor: kSlate,
      ),
      chipTheme: ChipThemeData(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        backgroundColor: const Color(0xFFF1F5F9),
        selectedColor: _blue,
        labelStyle: GoogleFonts.bricolageGrotesque(fontSize: 12, fontWeight: FontWeight.w500),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      ),
      dividerTheme: const DividerThemeData(color: Color(0xFFF1F5F9), thickness: 1),
      listTileTheme: const ListTileThemeData(
        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      ),
      segmentedButtonTheme: SegmentedButtonThemeData(
        style: SegmentedButton.styleFrom(
          selectedBackgroundColor: _blue,
          selectedForegroundColor: Colors.white,
          backgroundColor: const Color(0xFFF1F5F9),
          foregroundColor: kSlate,
          textStyle: GoogleFonts.bricolageGrotesque(fontSize: 13, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
