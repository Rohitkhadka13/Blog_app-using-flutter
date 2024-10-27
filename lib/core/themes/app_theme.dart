import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/colors.dart';

class AppTheme {

  const AppTheme._();

  static final light = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(seedColor: MyColors.primaryColor),
    fontFamily: GoogleFonts.poppins().fontFamily,
    
  );
  static final dark = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: MyColors.secondaryColor),
    useMaterial3: true,
        fontFamily: GoogleFonts.poppins().fontFamily,

  );
}
