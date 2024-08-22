import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class PodPulseTheme {
  PodPulseTheme._();

  static ThemeData get pulseTheme => ThemeData(
        scaffoldBackgroundColor: const Color(0XFF101114),
        primaryColor: const Color(0xFFFF3887),
        brightness: Brightness.dark,
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF101114),
          systemOverlayStyle: SystemUiOverlayStyle.dark,
        ),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFFF3887),
          brightness: Brightness.dark,
          primary: const Color(0xFFFF3887),
        ),
        dialogBackgroundColor: const Color(0xFF101114),
        textTheme: TextTheme(
          headlineLarge: _headingLargeStyle,
          titleMedium: _titleStyle,
          bodyMedium: _bodyMediumStyle,
          bodySmall: _bodySmallStyle,
        ),
      );

  static TextStyle get _headingLargeStyle => GoogleFonts.manrope(
        fontWeight: FontWeight.w800,
        fontSize: 32.sp,
        color: Colors.white,
      );

  static TextStyle get _titleStyle => GoogleFonts.manrope(
        fontWeight: FontWeight.w700,
        fontSize: 20.sp,
        color: Colors.white,
      );

  static TextStyle get _bodyMediumStyle => GoogleFonts.manrope(
        fontSize: 16.sp,
        fontWeight: FontWeight.w700,
        color: Colors.white,
      );

  static TextStyle get _bodySmallStyle => GoogleFonts.manrope(
        fontSize: 12.sp,
        fontWeight: FontWeight.w400,
        color: const Color(0XA3FFFFFF),
      );
}
