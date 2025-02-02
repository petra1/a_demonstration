import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ContrastRatio extends StatelessWidget {
  const ContrastRatio({super.key});

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
                  AppLocalizations.of(context)!.contrastRatio,
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Placeholder'),
                  SizedBox(
                    width: 20,
                  ),
                  Text('Placeholder'),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Placeholder'),
                  SizedBox(
                    width: 20,
                  ),
                  Text('Placeholder'),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Placeholder'),
                  SizedBox(
                    width: 20,
                  ),
                  Text('Placeholder'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
