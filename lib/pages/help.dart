import 'dart:io';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Help extends StatefulWidget {
  const Help({super.key});

  @override
  State<Help> createState() => _HelpState();
}

class _HelpState extends State<Help> {
  late final WebViewController _controller;

  @override
  void initState() {
    super.initState();
    _controller = WebViewController();
  }

  @override
  Widget build(BuildContext context) {
    String localeName = Platform.localeName;
    bool isDarkMode =
        MediaQuery.of(context).platformBrightness == Brightness.dark;

    String assetToLoad;

    if (localeName.startsWith('de') && isDarkMode) {
      assetToLoad = 'assets/html/dark_mode_usage_de.html';
    } else if (isDarkMode) {
      assetToLoad = 'assets/html/dark_mode_usage_de.html';
    } else if (localeName.startsWith('de')) {
      assetToLoad = 'assets/html/usage_de.html';
    } else {
      assetToLoad = 'assets/html/usage.html';
    }
    _controller.loadFlutterAsset(assetToLoad);

    return Scaffold(
      appBar: AppBar(),
      body: WebViewWidget(
        controller: _controller,
      ),
    );
  }
}
