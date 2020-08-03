import 'package:flutter/material.dart';

class CustomTheme {
  CustomTheme._();
  
  static const Color notWhite = Color(0xFFEDF0F2);
  static const Color nearlyWhite = Color(0xFFFFFFFF);
  static const Color nearlyBlue = Color(0xFF00B6F0);
  static const Color nearlyBlack = Color(0xFF213333);
  static const Color grey = Color(0xFF3A5160);
  static const Color dark_grey = Color(0xFF313A44);

  static const Color darkText = Color(0xFF253840);
  static const Color darkerText = Color(0xFF17262A);
  static const Color lightText = Color(0xFF4A6572);
  static const Color deactivatedText = Color(0xFF767676);
  static const Color dismissibleBackground = Color(0xFF364A54);
  static const Color chipBackground = Color(0xFFEEF1F3);
  static const Color spacer = Color(0xFFF2F2F2);

  static const TextTheme textTheme = TextTheme(
    display1: display1,
    title: title,
  );

  static const TextStyle display1 = TextStyle( // h4 -> display1
    fontFamily: 'WorkSans',
    fontWeight: FontWeight.bold,
    fontSize: 36,
    letterSpacing: 0.4,
    height: 0.9,
    color: nearlyWhite,
  );


  static const TextStyle title = TextStyle( // h6 -> title
    fontFamily: 'WorkSans',
    fontWeight: FontWeight.bold,
    fontSize: 16,
    letterSpacing: 0.18,
    color: darkerText,
  );
    static const TextStyle titleLight = TextStyle( // h6 -> title
    fontFamily: 'WorkSans',
    fontWeight: FontWeight.w500,
    fontSize: 16,
    letterSpacing: 0.18,
    color: darkerText,
  );

  static const TextStyle display3Light = TextStyle( // h4 -> display1
    fontFamily: 'SFUIDisplay',
    fontWeight: FontWeight.w500,
    fontSize: 32,
    letterSpacing: 0.1,
    height: 0.9,
    color: Colors.black,
  );

  static const TextStyle displaySmall = TextStyle( // h4 -> display1
    fontFamily: 'SFUIDisplay',
    fontWeight: FontWeight.w500,
    fontSize: 12,
    letterSpacing: 0.1,
    height: 0.9,
    color: Colors.black,
  );

}

  

