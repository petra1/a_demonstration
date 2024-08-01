import 'package:a_demonstration/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AlternativeText extends StatelessWidget {
  const AlternativeText({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 100, 0),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            Center(
              child: Semantics(
                header: true,
                child: Text(
                  (AppLocalizations.of(context)!.alternativeTextHeader),
                  style: const TextStyle(
                    fontSize: 22,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 600,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                    alignment: Alignment.topLeft,
                    child: platformName == 'iOS'
                        ? Text(
                            (AppLocalizations.of(context)!
                                .iosAlternativeTextDescription),
                            style: const TextStyle(fontSize: 16),
                          )
                        : Text(
                            (AppLocalizations.of(context)!
                                .alternativeTextDescription),
                            style: const TextStyle(fontSize: 16),
                          )),
              ),
            ),
            Semantics(
              header: true,
              child: Text(
                (AppLocalizations.of(context)!.noAlternativeTextHeading),
                style: const TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(
              width: 600,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    (AppLocalizations.of(context)!.noAlternativeDescription),
                    style: const TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ),
            Image.asset(
              "assets/images/rollstuhl.png",
              width: 50,
              height: 50,
              color: Colors.green.shade800,
            ),
            Semantics(
              // This widget gives the text a semantic structure
              header: true, // The text get marked as a heading
              child: Text(
                (AppLocalizations.of(context)!
                    .decorativeGraphicsHeading), // Localisation of the text
                style: const TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(
              width: 600,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: platformName == 'iOS'
                      ? Text(
                          (AppLocalizations.of(context)!
                              .iosDecorativeGraphicsDescription),
                          style: const TextStyle(fontSize: 16),
                        )
                      : Text(
                          (AppLocalizations.of(context)!
                              .decorativeGraphicsDescription),
                          style: const TextStyle(fontSize: 16),
                        ),
                ),
              ),
            ),
            Semantics(
              image: true,
              label: "",
              child: Image.asset(
                "assets/images/rollstuhl.png",
                width: 50,
                height: 50,
                color: Colors.green.shade800,
              ),
            ),
            Semantics(
              header: true,
              child: Text(
                (AppLocalizations.of(context)!.informativeGraphicsHeading),
                style: const TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(
              width: 600,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    (AppLocalizations.of(context)!
                        .informativeGraphicsDescription),
                    style: const TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ),
            Semantics(
              // This widget gives the graphic a semantic structure.
              image: true, // The graphic get marked as such.
              label: AppLocalizations.of(context)!
                  .informativeGraphicsAlternativeText, // Localisation of alternative text.
              child: Image.asset(
                "assets/images/rollstuhl.png",
                width: 50,
                height: 50,
                color: Colors.green.shade800,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
