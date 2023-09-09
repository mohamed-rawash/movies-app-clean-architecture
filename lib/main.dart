import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:movies_app/tvs/data/repository/tv_repository.dart';

import 'core/services/services_locator.dart';
import 'core/config/localization/strings/app_strings.dart';
import 'generated/l10n.dart';
import 'movies/presentation/screens/movies_screen.dart';
import 'tvs/presentation/screens/tv_Screen.dart';

void main() {
  ServicesLocator().init();
  TvRepository(sl()).getOnTheAir();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppStrings.appName,
      locale: const Locale("en"),
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.grey.shade900,
        appBarTheme: const AppBarTheme().copyWith(
          centerTitle: true,
          color: Colors.transparent
        )
      ),
      home: const TvScreen(),
    );
  }
}