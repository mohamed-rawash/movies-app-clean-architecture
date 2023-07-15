import 'package:flutter/material.dart';
import 'package:movies_app/core/config/themes/dark/dark_theme.dart';

import 'core/services/services_locator.dart';
import 'core/config/localization/strings/app_strings.dart';
import 'movies/presentation/screens/movies_screen.dart';

void main() {
  ServicesLocator().init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppStrings.appName,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.grey.shade900
      ),
      home: const MoviesScreen(),
    );
  }
}