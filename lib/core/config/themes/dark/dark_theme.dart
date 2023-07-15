import 'package:flutter/material.dart';
import 'package:movies_app/core/config/themes/colors/app_colors_dark.dart';

ThemeData getDarkTheme() => ThemeData(
  appBarTheme: _getAppBarTheme(),
  scaffoldBackgroundColor: AppColorsDark.scaffoldBackground,
);

AppBarTheme _getAppBarTheme() => const AppBarTheme();