import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ImageButtons extends StatelessWidget {
  const ImageButtons({super.key});
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

          const SizedBox(
            width: 600,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text("This example shows how TalkBack behaves with graphic buttons that lack alternative text, and at the same time shows how the buttons can be made more usable for people with limited fine motor skills.",
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
          ),
        ],
      ),

    );
  }
}