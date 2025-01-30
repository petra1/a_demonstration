import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ImageButton extends StatefulWidget {
  const ImageButton({super.key});

  @override
  State<ImageButton> createState() => _ImageButtonState();
}

class _ImageButtonState extends State<ImageButton> {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 100, 0),
      ),
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
              SizedBox(height: 10),
              Text(
                AppLocalizations.of(context)!.description1ImageButton,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 5),
              Text(
                AppLocalizations.of(context)!.description2ImageButton,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              Text(
              'dynamic Questen 2'
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.help),
              ),
              Text('dynamic Questen 2'),
              IconButton(
                iconSize: 48,
                onPressed: () {},
                icon: Icon(
                  Icons.help,
                ),
              ),
              ElevatedButton(
                onPressed: () {},
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
