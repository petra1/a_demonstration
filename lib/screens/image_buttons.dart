import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ImageButtons extends StatefulWidget {
  const ImageButtons({super.key});
  @override
  State<ImageButtons> createState() {
    return _ImageButtonsState();
  }
}

class _ImageButtonsState extends State<ImageButtons> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 100, 0),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Column(
        children: [
          const SizedBox(height: 40,),
          Center(
            child: Semantics(
              header: true,
              child:
              Text((AppLocalizations.of(context)!.imageButtonHeader),
                style: const TextStyle(fontSize: 22), ),
            ),
          ),
          const SizedBox(height: 20,),
           SizedBox(
            width: 600,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text((AppLocalizations.of(context)!.imageButtonTextDescription2),
                  style: const TextStyle(fontSize: 16),
                ),
              ),
            ),
          ),
            const SizedBox(height: 20,),
           SizedBox(
            width: 600,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text((AppLocalizations.of(context)!.imageButtonTextDescription1),
                  style: const TextStyle(fontSize: 16),
                ),
              ),
            ),
          ),
        ],
      ),

    );
  }
}