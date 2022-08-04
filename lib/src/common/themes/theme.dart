import 'package:flutter/material.dart';
import '../styles/styles.dart';

import 'themes.dart';

class SpbeTheme {
  static final theme = ThemeData().copyWith(
    primaryColor: kRed600,
    scaffoldBackgroundColor: Colors.white,
    chipTheme: const ChipThemeData(
      shape: StadiumBorder(
        side: BorderSide(
          color: kBlueGrey600,
        ),
      ),
      backgroundColor: Colors.white,
      disabledColor: kBlueGrey100,
      selectedColor: kBlueGrey600,
      secondarySelectedColor: kBlueGrey600,
      padding: EdgeInsets.all(4),
      labelStyle: bodyStyle,
      secondaryLabelStyle: TextStyle(
        color: Colors.white,
      ),
      brightness: Brightness.dark,
    ),
  );
}
