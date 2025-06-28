import 'package:a_demonstration/widgets/accesssible_icon.dart';
import 'package:flutter/material.dart';
import 'package:a_demonstration/l10n/app_localizations.dart';

class Graphics extends StatelessWidget {
  const Graphics({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         
          
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
                  AppLocalizations.of(context)!.alternativeText,
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
              ),
             const SizedBox(height: 20),
              Text(
                AppLocalizations.of(context)!.altDescription,
                style: TextStyle(
                    fontSize: 16,
                  ),
              ),
              SizedBox(height: 10),
              Semantics(
                header: true,
                headingLevel: 2,
                child: Text(
                  AppLocalizations.of(context)!.noAltText,
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Text(
                AppLocalizations.of(context)!.noAltDescription,
                style: TextStyle(
                    fontSize: 16,
                  ),
              ),
              AccesssibleIcon(),
              Semantics(
                header: true,
                headingLevel: 2,
                child: Text(
                  AppLocalizations.of(context)!.decorativeGraphics,
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Text(
                AppLocalizations.of(context)!.decorativeGraphicDescriptions,
                style: TextStyle(
                    fontSize: 16,
                  ),
              ),
              Semantics(
                image: true,
                child: AccesssibleIcon(),
              ),
              Semantics(
                header: true,
                headingLevel: 2,
                child: Text(
                  AppLocalizations.of(context)!.informativeGraphic,
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Text(
                AppLocalizations.of(context)!.informativeGraphicDescription,
                style: TextStyle(
                    fontSize: 16,
                  ),
              ),
              Semantics(
                image: true,
                label: 'accessibile',
                child: AccesssibleIcon(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
