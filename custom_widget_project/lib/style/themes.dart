import 'package:flutter/material.dart';

import 'colors.dart';

final ThemeData appTheme = ThemeData(
  accentColor: blue,
  textTheme: _textTheme,
);

final TextTheme _textTheme = TextTheme(
  bodyText1: TextStyle(color: grey, fontSize: 14.0),
  headline1:
      TextStyle(color: darkGrey, fontSize: 16.0, fontWeight: FontWeight.bold),
);
