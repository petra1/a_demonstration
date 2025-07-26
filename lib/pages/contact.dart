import 'package:a_demonstration/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Contact extends StatefulWidget {
  const Contact({super.key});

  @override
  State<Contact> createState() => _ContactState();
  

 
 
}

class _ContactState extends State<Contact> {
  final Uri myWebSiteUrl = Uri.parse('https://sites.google.com/view/ritter-apps/project');
  final Uri myEmail = Uri.parse('mailto:ritter1.apps@gmail.com');

  Future<void> launchWebSiteUrl() async {
    try{
      await launchUrl(myWebSiteUrl);
    } catch (err) {
      // error handeling
    }
  }
 Future<void> launchMauk() async {
    try{
      await launchUrl(myEmail);
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
                  AppLocalizations.of(context)!.dataProtection,
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                AppLocalizations.of(context)!.dataProtectionDescription1,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 10),
              Text(
                AppLocalizations.of(context)!.dataProtectionDescription2,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 10),
              Semantics(
                header: true,
                headingLevel: 2,
                child: Text(
                  AppLocalizations.of(context)!.contact,
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Text(
                    AppLocalizations.of(context)!.name,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      AppLocalizations.of(context)!.devName,
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Text(
                    AppLocalizations.of(context)!.eMail,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell( 
                      onTap: () {
                   launchUrl(myEmail);
                      },
                      child: Text(
                        "ritter1.apps@gmail.com",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.blue,
                          decoration: TextDecoration.underline,

                        ),
                      ),
                    
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  AppLocalizations.of(context)!.webSite,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: InkWell(
                  onTap: () {
                  launchUrl(myWebSiteUrl);
                  },
                  child: Text(
                    "https://sites.google.com/view/ritter-apps/project",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.blue,
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
