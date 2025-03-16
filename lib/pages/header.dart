import 'dart:io'; // Importiere die benötigte Bibliothek
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Header extends StatefulWidget {
  const Header({super.key});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  late final WebViewController _controller;

  @override
  void initState() {
    super.initState();
    _controller = WebViewController()
     ..setJavaScriptMode(JavaScriptMode.unrestricted); // add this
  }

  @override
  Widget build(BuildContext context) {
    // Prüfe die aktuelle Locale und die Plattform-Helligkeit
    String localeName = Platform.localeName;
    bool isDarkMode =
        MediaQuery.of(context).platformBrightness == Brightness.dark;

    // Lade die entsprechende HTML-Datei basierend auf den Bedingungen
    String assetToLoad;

    if (localeName.startsWith('de') && isDarkMode) {
      assetToLoad = 'assets/html/dark_mode_heading_de.html';
    } else if (isDarkMode) {
      assetToLoad = 'assets/html/dark_mode_heading.html';
    } else if (localeName.startsWith('de')) {
      assetToLoad = 'assets/html/heading_de.html';
    } else {
      assetToLoad = 'assets/html/heading.html';
    }

    // Lade die ausgewählte HTML-Datei
    _controller.loadFlutterAsset(assetToLoad);

    return Scaffold(
      appBar: AppBar(),
      body: WebViewWidget(controller: _controller,
      ),
      
    );
  }
}
