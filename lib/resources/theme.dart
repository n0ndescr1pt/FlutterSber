import 'package:flutter/material.dart';
import 'package:sberbank_project/resources/TextStyles.dart';

ThemeData basicTheme() => ThemeData(
  fontFamily: 'SF Pro Text',
  textTheme: const TextTheme(
    
    labelSmall: TextStyleSelect.chipStyle,
    
  )
);