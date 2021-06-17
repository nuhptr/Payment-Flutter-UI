import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:google_fonts/google_fonts.dart';

// TODO: Color of App
Color? blueColor = Color(0xff007DFF);
Color? orangeColor = Color(0xffFA4F0D);
Color? darkBlue = Color(0xff14203C);
Color? grayColor = Color(0xff8997B8);

// TODO : font style Tittle
TextStyle titleStyle = GoogleFonts.poppins(
  color: blueColor,
  fontWeight: FontWeight.bold,
  fontSize: 26,
);

// TODO: font style sub tittle
TextStyle subTitleStyle = GoogleFonts.poppins(
  color: grayColor,
  fontSize: 16,
  fontWeight: FontWeight.w300,
);

// TODO : style content
TextStyle contentStyle = GoogleFonts.poppins(
  color: darkBlue,
  fontSize: 14,
  fontWeight: FontWeight.w500,
);

// TODO: style sub content
TextStyle subContentStyle = GoogleFonts.poppins(
  color: darkBlue,
  fontSize: 14,
  fontWeight: FontWeight.w300,
);

// TODO: style price
TextStyle priceStyle = GoogleFonts.poppins(
  color: orangeColor,
  fontSize: 18,
  fontWeight: FontWeight.bold,
);

// TODO: style button
TextStyle buttonStyle = GoogleFonts.poppins(
  color: Colors.white,
  fontWeight: FontWeight.w700,
  fontSize: 16,
);
