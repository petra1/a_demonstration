import 'package:a_demonstration/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class EditFields extends StatelessWidget {
  const EditFields({super.key});
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
                  (AppLocalizations.of(context)!.editFieldHeader),
                  style: const TextStyle(fontSize: 22),
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
                              .iosEditFieldTextDescription1),
                          style: const TextStyle(fontSize: 16),
                        )
                      : Text(
                          (AppLocalizations.of(context)!
                              .editFieldTextDescription1),
                          style: const TextStyle(fontSize: 16),
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
                  child: Text(
                    (AppLocalizations.of(context)!.editFieldTextDescription2),
                    style: const TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Form(
                child: Column(
                  children: [
                    TextFormField(
                      decoration:
                          const InputDecoration(hintText: "Any first name"),
                    ),
                     const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        TextButton(
                          style: TextButton.styleFrom(
                            backgroundColor: const Color.fromARGB(255, 0, 100, 0),
                            foregroundColor: Colors.white,
                          ),
                          child: const Text("Send First name", style: TextStyle(fontSize: 16),),
                          onPressed: () {},
                        ),
                      ],
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        label: Text("Any Last name"),
                      ),
                    ),
                     const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        TextButton(
                          style: TextButton.styleFrom(
                            backgroundColor: const Color.fromARGB(255, 0, 100, 0),
                            foregroundColor: Colors.white,
                          ),
                          child: const Text("Send Last name", style: TextStyle(fontSize: 16),),
                          onPressed: () {},
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        TextFormField(),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        TextButton(
                          style: TextButton.styleFrom(
                            backgroundColor: const Color.fromARGB(255, 0, 100, 0),
                            foregroundColor: Colors.white,
                          ),
                          child: const Text("Show full Name", style: TextStyle(fontSize: 16),),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
