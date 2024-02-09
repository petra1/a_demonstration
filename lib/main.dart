import 'package:flutter/material.dart';
import 'package:a_demonstration/navbar.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'dart:ui';
import 'package:flutter/widgets.dart';


main() {
  runApp(const MainScreen());
}

extension  DarkMode on BuildContext {
bool get isDarkMode {
  return MediaQuery.of(this).platformBrightness == Brightness.dark;
}
}
class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        debugShowCheckedModeBanner: false,
        localizationsDelegates: [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: [
          Locale("en"),
          Locale("de"),

        ],
      themeMode: ThemeMode.system,
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.red,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),



        home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

   drawer:  const NavBar(),
      appBar: AppBar(
        backgroundColor:  const Color.fromARGB(255, 0, 100, 0),
        systemOverlayStyle: SystemUiOverlayStyle.light ,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Container(
        child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppImage(),
            SizedBox(height:40),
            Text(
              "A Demonstration",
              style: TextStyle(color: Color.fromARGB(255, 0, 100, 0,),
                  fontSize: 35),
            ),
          ],
        ),
      )

    );
  }
}



class AppImage extends StatelessWidget {
  const AppImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 200,
        height: 200,
        decoration: BoxDecoration(
          image: const DecorationImage(image: AssetImage("assets/images/App_logo.png")),
          border: Border.all(color: Colors.black, width: 1.0),
          borderRadius: BorderRadius.circular(200),
        ),
      ),
    );
  }
}
