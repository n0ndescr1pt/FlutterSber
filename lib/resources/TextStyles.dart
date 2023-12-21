import 'package:flutter/material.dart';



class TextStyleSelect {

  static const TextStyle boldTitle = TextStyle(
    color: Colors.black,
    fontSize: 20,
    fontFamily: 'SF Pro Text',
    fontWeight: FontWeight.w700,
    letterSpacing: -0.70,
  );
  static TextStyle subTitleGrey = TextStyle(
    color: Colors.black.withOpacity(0.5),
    fontSize: 14,
    fontFamily: 'SF Pro Text',
    fontWeight: FontWeight.w500,
    letterSpacing: -0.42,
  );

  static const TextStyle nameText = TextStyle(
    color: Colors.black,
    fontSize: 24,
    fontFamily: 'SF Pro Display',
    fontWeight: FontWeight.w700,
    height: 0.06,
  );

  static const TextStyle cardTitle = TextStyle(
    color: Colors.black,
    fontSize: 16,
    fontFamily: 'SF Pro Text',
    fontWeight: FontWeight.w500,
    height: 0.08,
    letterSpacing: -0.40,
  );

  static const TextStyle chipStyle = TextStyle(
    color: Colors.black,
    fontSize: 14,
    fontFamily: 'SF Pro Text',
    fontWeight: FontWeight.w500,
    height: 0.09,
    letterSpacing: -0.41,
  );
}
