import 'package:flutter/material.dart';
import 'package:a_demonstration/l10n/app_localizations.dart';

class ContrastRatio extends StatelessWidget {
  const ContrastRatio({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              const SizedBox(
                height: 8,
              ),
              Center(
                child: Semantics(
                  header: true,
                  child: Text(
                    (AppLocalizations.of(context)!.contrastRatio),
                    style: const TextStyle(fontSize: 24),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    (AppLocalizations.of(context)!.contrastRadioDescription),
                    style: const TextStyle(fontSize: 16),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: Container(
                      width: 20,
                      height: 80,
                      color: Colors.black,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          (AppLocalizations.of(context)!.contrastRadioPassed),
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: Container(
                      width: 20,
                      height: 80,
                      color: const Color.fromARGB(255, 160, 176, 161),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          (AppLocalizations.of(context)!.contrastRadioFailed),
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 5,
                  ),
                  Expanded(
                      child: Container(
                    width: 20,
                    height: 80,
                    color: const Color.fromARGB(255, 90, 77, 173),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        (AppLocalizations.of(context)!.contrastRadioJustPassed),
                        style: const TextStyle(
                            color: Color.fromARGB(255, 0, 233, 255)),
                      ),
                    ),
                  )),
                  const SizedBox(
                    width: 5,
                  ),
                  Expanded(
                      child: Container(
                    width: 20,
                    height: 80,
                    color: const Color.fromARGB(255, 0, 131, 161),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        (AppLocalizations.of(context)!.contrastRadioJustFailed),
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                  )),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 5,
                  ),
                  Expanded(
                      child: Container(
                    width: 20,
                    height: 80,
                    color: const Color.fromARGB(255, 0, 100, 0),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        (AppLocalizations.of(context)!.contrastRadioPassedWith),
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                  )),
                  const SizedBox(
                    width: 5,
                  ),
                  Expanded(
                      child: Container(
                    width: 20,
                    height: 80,
                    color: const Color.fromARGB(255, 178, 134, 252),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        (AppLocalizations.of(context)!.contrastRadioFaileddWith),
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                  )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
