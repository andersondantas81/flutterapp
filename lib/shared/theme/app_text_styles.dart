import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_theme.dart';

abstract class IAppTextStyles {
  TextStyle get title;
  TextStyle get subtitle;
  TextStyle get logo;
  TextStyle get label;
  TextStyle get input;
  TextStyle get hint;
  TextStyle get buttonBackgroundcolor;
  TextStyle get buttonBoldTextColor;
  TextStyle get buttonTextColor;
}

class AppTextStyles implements IAppTextStyles {
  @override
  TextStyle get label => GoogleFonts.roboto(
      fontWeight: FontWeight.bold,
      fontSize: 16,
      color: AppTheme.colors.textColor);

  @override
  TextStyle get buttonBackgroundcolor => GoogleFonts.roboto(
      fontWeight: FontWeight.bold,
      color: AppTheme.colors.background,
      fontSize: 14);

  @override
  TextStyle get buttonBoldTextColor => GoogleFonts.roboto(
      fontWeight: FontWeight.bold,
      color: AppTheme.colors.textColor,
      fontSize: 14);

  @override
  TextStyle get buttonTextColor => GoogleFonts.roboto(
      fontWeight: FontWeight.normal,
      color: AppTheme.colors.textColor,
      fontSize: 14);

  @override
  TextStyle get hint => GoogleFonts.roboto(
      fontWeight: FontWeight.normal,
      color: AppTheme.colors.inputNormal,
      fontSize: 14);

  @override
  TextStyle get input => GoogleFonts.roboto(
      fontWeight: FontWeight.normal,
      color: AppTheme.colors.inputNormal,
      fontSize: 16);

  @override
  TextStyle get logo => GoogleFonts.baloo(
      fontWeight: FontWeight.bold,
      color: AppTheme.colors.background,
      fontSize: 72);

  @override
  TextStyle get subtitle => GoogleFonts.roboto(
      fontWeight: FontWeight.normal,
      color: AppTheme.colors.subtitle,
      fontSize: 14);

  @override
  TextStyle get title => GoogleFonts.roboto(
      fontWeight: FontWeight.bold, color: AppTheme.colors.title, fontSize: 22);
}
