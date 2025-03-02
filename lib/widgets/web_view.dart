import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:webview_flutter/webview_flutter.dart';
//import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class WebView extends StatefulWidget {
  const WebView({super.key});

  @override
  State<WebView> createState() => _WebViewState();
}

class _WebViewState extends State<WebView> {
  late WebViewController _webViewController;

  @override
  void initState() {
    super.initState();
    _initializeWebView();
  }

  void _initializeWebView() {
    if (_webViewController != null) return;
    _webViewController = WebViewController();
  }

  Future<ByteData> _getHtmlFileName(BuildContext) {
    // Get the system language
    Locale locale = Localizations.localeOf(context);

    // Check if it's German or another language
    String language = locale.languageCode;
    bool isGerman = language == 'de';
    // Check if it's light or dark mode
    bool isDarkMode =
        MediaQuery.of(context).platformBrightness == Brightness.dark;

    // Determine the file based on language and theme
    if (isGerman) {
      return isDarkMode
          ? rootBundle.load('assets/html/dark_mode_heading_de.html')
          : rootBundle.load('assets/html/heading_de.html');
    } else {
      return isDarkMode
          ? rootBundle.load('assets/html/dark_mode_heading.html')
          : rootBundle.load('assets/html/heading.html');
    }
  }

  @override
  Widget build(BuildContext context) {
      // Get the HTML file to display based on language and theme
    String fileName = _getHtmlFileName(context) as String;
    return Scaffold(
      appBar: AppBar(),
      body: WebViewWidget(
      controller: _webViewController,
      ),
      
    );
  }
}
