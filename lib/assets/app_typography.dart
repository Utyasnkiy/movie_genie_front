import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_genie/assets/app_color.dart';

abstract class AppTypography{

  static final TextStyle barTitle = GoogleFonts.ptSans(
    fontWeight: FontWeight.w400,
    fontSize: 15,
    color: AppColor.white,
  );

  static final TextStyle helperText = GoogleFonts.ptSans(
    fontWeight: FontWeight.w400,
    fontSize: 15,
    color: AppColor.helperText,
  );

  static final TextStyle titleMedium = GoogleFonts.ptSans(
    fontWeight: FontWeight.w700,
    fontSize: 20,
    color: AppColor.black,
  );

  static final TextStyle titleSmall = GoogleFonts.ptSans(
    fontWeight: FontWeight.w400,
    fontSize: 14,
    color: AppColor.black,
  );

  static final TextStyle titleLarge = GoogleFonts.ptSans(
    fontWeight: FontWeight.w700,
    fontSize: 26,
  );

  static final TextStyle labelLarge = GoogleFonts.ptSans(
    fontWeight: FontWeight.w700,
    fontSize: 18,
    color: AppColor.white,
  );

  static final TextStyle superBig = GoogleFonts.ptSans(
    fontWeight: FontWeight.w700,
    fontSize: 40,
    color: AppColor.white,
  );

  static final TextStyle popUpStyle = GoogleFonts.ptSans(
    fontWeight: FontWeight.w400,
    fontSize: 24,
    color: AppColor.white,
  );

  static final TextStyle bodyMedium = GoogleFonts.ptSans(
    fontWeight: FontWeight.w400,
    fontSize: 22,
    color: AppColor.white,
  );


}