import 'dart:io';
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
    _controller = WebViewController();
  }

  @override
  Widget build(BuildContext context) {
    String localeName = Platform.localeName;
    bool isDarkMode =
        MediaQuery.of(context).platformBrightness == Brightness.dark;

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

    _controller.loadFlutterAsset(assetToLoad);

    return Scaffold(
      appBar: AppBar(),
      body: WebViewWidget(
        controller: _controller,
      ),
    );
  }
}
