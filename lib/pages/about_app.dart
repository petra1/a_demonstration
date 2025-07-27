import 'package:flutter/material.dart';
import 'package:a_demonstration/l10n/app_localizations.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutApp extends StatefulWidget {
  const AboutApp({super.key});

  @override
  State<AboutApp> createState() => _AboutAppState();
}

class _AboutAppState extends State<AboutApp> {
  final Uri myGitHubUrl =
      Uri.parse('https://github.com/petra1/a_demonstration');
  Future<void> launchGitGubUrl() async {
    try {
      await launchUrl(myGitHubUrl);
    } catch (err) {
      // error handeling
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Semantics(
                header: true,
                headingLevel: 1,
                child: Text(
                  AppLocalizations.of(context)!.about,
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  AppLocalizations.of(context)!.appName,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "A Demonstration",
                  style: TextStyle(
                    fontSize: 16,
                   
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  AppLocalizations.of(context)!.appVersion,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 3),

              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "0.99",
                  style: TextStyle(
                    fontSize: 16,
                    
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  AppLocalizations.of(context)!.buildNumber,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height:3),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  "8  ",
                  style: TextStyle(
                    fontSize: 16,
                  
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  AppLocalizations.of(context)!.gitHub,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 3),
              Container(
                alignment: Alignment.centerLeft,
                child: InkWell(
                  onTap: () {
                    launchUrl(myGitHubUrl );
                  },
                  child: Text(
                    "https://github.com/petra1/a_demonstration",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.green,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
