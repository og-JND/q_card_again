import 'package:flutter/material.dart';

class DesignConstants{
  static Color WHITE = Color(0xffFFFFFF);
  static Color RICHBLACK = Color(0xff042A2B);
  static Color BROWN = Color(0xff86836D);
  static Color ORANGE = Color(0xffD84727);
  static Color BLUE = Color(0xff07BEB8);
}

class TextDesigns{
  static TextStyle BODYTEXT = TextStyle(
    fontSize: 20,
    wordSpacing: 1,
    letterSpacing: 0.25,
    color: DesignConstants.RICHBLACK,
  );
  static TextStyle HEADERTEXT = TextStyle(
    fontSize: 40,
    wordSpacing: 1,
    letterSpacing: 0.25,
    color: DesignConstants.BROWN,
  );
  static TextStyle NAVTEXT = TextStyle(
    fontSize: 15,
    wordSpacing: 1,
    letterSpacing: 1,
    color: DesignConstants.RICHBLACK,
  );
}

const Map<String, dynamic> IconMap ={
  'Scan' : Icon(
    Icons.qr_code_scanner_outlined,
    size: 30,
  ),
  'Create' : Icon(
      Icons.create_rounded,
      size: 30,
  )
};

