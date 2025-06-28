import 'package:flutter/material.dart';
import 'package:a_demonstration/l10n/app_localizations.dart';

class ImageButton extends StatefulWidget {
  const ImageButton({super.key});

  @override
  State<ImageButton> createState() => _ImageButtonState();
}

var text1 = 0;
var text2 = 0;

class _ImageButtonState extends State<ImageButton> {
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
                  AppLocalizations.of(context)!.imageButtons,
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
              ),
              SizedBox(height: 15.0),
              Text(
                AppLocalizations.of(context)!.description1ImageButton,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 15.0),
              Text(
                text1 == 0
                    ? AppLocalizations.of(context)!.question1ImageButton
                    : AppLocalizations.of(context)!.answer1ImageButton,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    text1 = 1;
                  });
                },
                icon: Icon(Icons.help),
              ),
              SizedBox(
                height: 15.0,
              ),
              Text(
                text2 == 0
                    ? AppLocalizations.of(context)!.question2ImageButton
                    : AppLocalizations.of(context)!.answer2ImageButton,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              IconButton(
                iconSize: 48,
                onPressed: () {
                  setState(() {
                    text2 = 1;
                  });
                },
                icon: Icon(
                  Icons.help,
                  semanticLabel: AppLocalizations.of(context)!.help,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    text1 = 0;
                    text2 = 0;
                  });
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                child: Text(
                  'Reset questions',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
