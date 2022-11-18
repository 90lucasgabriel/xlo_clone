import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class AppTextStyles {
  TextStyle get title;
  TextStyle get subtitle;
  TextStyle get text;
  TextStyle get textDisabled;
  TextStyle get textLink;
  TextStyle get appBarTitle;
}

class AppTextStylesDefault implements AppTextStyles {
  @override
  TextStyle get title => GoogleFonts.roboto(
        fontSize: 24,
        fontWeight: FontWeight.w200,
        color: Colors.black87,
      );

  @override
  TextStyle get subtitle => GoogleFonts.roboto(
        fontSize: 16,
        fontWeight: FontWeight.w300,
        color: Colors.black54,
      );

  @override
  TextStyle get text => GoogleFonts.inter(
        fontSize: 14,
        fontWeight: FontWeight.w300,
        color: Colors.black54,
      );

  @override
  TextStyle get textDisabled => GoogleFonts.inter(
        fontSize: 12,
        fontWeight: FontWeight.w300,
        color: Colors.black12,
      );

  @override
  TextStyle get textLink => GoogleFonts.inter(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        decoration: TextDecoration.underline,
        color: Colors.purple,
      );

  @override
  TextStyle get appBarTitle => GoogleFonts.roboto(
        fontSize: 16,
        fontWeight: FontWeight.w700,
        color: Colors.white,
      );
}
