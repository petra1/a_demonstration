import 'package:a_demonstration/l10n/app_localizations.dart';
import 'package:flutter/material.dart';

class Check extends StatefulWidget {
  const Check({super.key});

  @override
  State<Check> createState() => _CheckState();
}

class _CheckState extends State<Check> {
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
                  AppLocalizations.of(context)!.checkBoxes,
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
              ),
              const SizedBox(height: 20.0),
              Text(
                AppLocalizations.of(context)!.editFieldsDescription1,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                AppLocalizations.of(context)!.editFieldsDescription2,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 60.0), 
            ],
          ),
        ),
      ),
    );
  }
}
