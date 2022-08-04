import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:logger/logger.dart';

import 'src/app.dart';
import 'src/common/common.dart';

final logger = Logger();
void main() async {
  //setting statusbar color
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
      statusBarColor: kRed600, // Color for Android
      statusBarIconBrightness: Brightness.light, //status barIcon Brightness
      statusBarBrightness:
          Brightness.dark // Dark == white status bar -- for IOS.
      ));
  runApp(const MyApp());
}
