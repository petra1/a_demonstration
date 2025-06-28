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
              const SizedBox(height: 20.0),
              Text(
                AppLocalizations.of(context)!.description1ImageButton,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 20),
              Semantics(
                liveRegion: true,
                child: Text(
                  text1 == 0
                      ? AppLocalizations.of(context)!.question1ImageButton
                      : AppLocalizations.of(context)!.answer1ImageButton,
                  style: TextStyle(
                    fontSize: 16,
                  ),
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
              Semantics(
                liveRegion: true,
                child: Text(
                  text2 == 0
                      ? AppLocalizations.of(context)!.question2ImageButton
                      : AppLocalizations.of(context)!.answer2ImageButton,
                  style: TextStyle(
                    fontSize: 16,
                  ),
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
                  semanticLabel: AppLocalizations.of(context)!.helpQuestion2Button,
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
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.resolveWith(getColor),
                ),
                child: Text(
                  AppLocalizations.of(context)!.resetButton,
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

Color? getColor(Set<WidgetState> states) {
  const Set<WidgetState> interactiveStates = <WidgetState>{
    WidgetState.focused,
  };
  if (states.any(interactiveStates.contains)) {
    return const Color.fromARGB(255, 175, 95, 90);
  }
  return Colors.red;
}
