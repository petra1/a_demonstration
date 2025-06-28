import 'package:flutter/material.dart';
import 'package:a_demonstration/l10n/app_localizations.dart';
import 'package:a_demonstration/pages/home_page.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

var kColorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 0, 100, 0),
);

var kDarkColorScheme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: const Color.fromARGB(255, 0, 100, 0),
);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en'), // English
        Locale('de'), // German
      ],
      title: 'Flutter Demo',
      darkTheme: ThemeData.dark().copyWith(
        colorScheme: kDarkColorScheme,
        appBarTheme: const AppBarTheme().copyWith(
            backgroundColor:  Color.fromARGB(255, 0, 100, 0),
            foregroundColor: Colors.white,
          ),
        
      ),
      theme: ThemeData().copyWith(
        colorScheme: kColorScheme,
       appBarTheme: const AppBarTheme().copyWith(
            backgroundColor:  Color.fromARGB(255, 0, 100, 0),
            foregroundColor:  Colors.white,
          ),
        scaffoldBackgroundColor: const Color.fromARGB(246, 243, 245, 239)
      ),
      themeMode: ThemeMode.system,
      home: const HomePage(),
    );
  }
}
