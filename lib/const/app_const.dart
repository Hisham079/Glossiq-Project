import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

///The gap between UI elements in Height
const kHeight = SizedBox(height: 30);
const kMinHeight = SizedBox(height: 20);
const kHeight15 = SizedBox(height: 15);
const kHeight10 = SizedBox(height: 10);
const kSmHeight = SizedBox(height: 10);
const sHeight = SizedBox(height: 5);

///The gap between UI elements in Width
const smMinWidth = SizedBox(width: 10);
const mdWidth = SizedBox(width: 20);
const sWidth = SizedBox(width: 5);
const kWidth30 = SizedBox(width: 30);
const kWidth10 = SizedBox(width: 10);

///Text styles
TextStyle headStyLoginField = TextStyle(
  fontSize: 16,
  fontFamily: GoogleFonts.ibmPlexSans().fontFamily,
  color: Colors.black,
);

TextStyle headStyleNormal = const TextStyle(
  fontSize: 16,
  fontFamily: 'ibmPlexRegular',
  color: Color(0xFF000000),
);

TextStyle pageHead = const TextStyle(
    color: Colors.black,
    fontSize: 24,
    fontWeight: FontWeight.w800,
    fontFamily: 'ibmPlexSemiBold');

TextStyle mediumText = const TextStyle(
    color: Colors.black,
    fontSize: 30,
    fontWeight: FontWeight.w800,
    fontFamily: 'ibmPlexMedium');

TextStyle bigText = const TextStyle(
    color: Colors.black,
    fontSize: 30,
    fontWeight: FontWeight.w800,
    fontFamily: 'ibmPlexSemiBold');

TextStyle ibmMedBlack = GoogleFonts.ibmPlexSans(
  fontWeight: FontWeight.w500,
  fontSize: 16,
  color: const Color(0XFF000000),
);

TextStyle ibmMedBlack20 = GoogleFonts.ibmPlexSans(
  fontWeight: FontWeight.w500,
  fontSize: 20,
  color: const Color(0XFF000000),
);
TextStyle ibmNormalGrey = GoogleFonts.ibmPlexSans(
  fontWeight: FontWeight.w400,
  fontSize: 16,
  color: Colors.grey.shade500,
);

///Colors
Color primaryColor = const Color(0xFFBDFF3B);
Color grey10 = const Color(0xFFF4F4F4);
Color grey100 = const Color(0xFF161616);
Color textGrey = const Color(0xFF6F6F6F);
Color fieldTextGrey = const Color(0xFF262626);

Color secondaryColor = const Color.fromRGBO(0, 0, 0, 1);
