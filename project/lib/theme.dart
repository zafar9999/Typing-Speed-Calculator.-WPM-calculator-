import 'package:flutter/material.dart';

final appTheme = ThemeData(


  //Colors
  primaryColorDark: const Color.fromRGBO(23, 21, 59, 1),
  primaryColorLight: const Color.fromRGBO(67, 61, 139, 1),
  primaryColor: const Color.fromRGBO(46, 35, 108, 1),



  //TextStyle
  textTheme: const TextTheme(
    titleLarge:  TextStyle(fontFamily: 'ShareTechMono', color: Color.fromRGBO(200, 172, 214,1))
    // titleLarge: GoogleFonts.shareTechMono(color: Colors.white, fontSize: 25, fontWeight: FontWeight.w700)
  )

);
