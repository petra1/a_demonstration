import 'package:a_demonstration/l10n/app_localizations.dart';
import 'package:flutter/material.dart';


class EditFields extends StatefulWidget {
  const EditFields({super.key});

  @override
  State<EditFields> createState() => _EditFieldsState();
}

class _EditFieldsState extends State<EditFields> {
  final TextEditingController _fistnameController = TextEditingController();
  final TextEditingController _lastnameController = TextEditingController();
  String _fullName = '';

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
                  AppLocalizations.of(context)!.editFields,
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
              TextField(
                controller: _fistnameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.green,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: AppLocalizations.of(context)!.firstEditFieldHint,
                ),
              ),
              const SizedBox(height: 30.0),
              TextField(
                controller: _lastnameController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.green,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    label: Text(
                      AppLocalizations.of(context)!.secondEditFieldLabel,
                    )),
              ),
              SizedBox(
                height: 60.0,
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.resolveWith(getColor),
                ),
                onPressed: () {
                  setState(() {
                    _fullName =
                        '${_fistnameController.text} ${_lastnameController.text}';
                  });
                },
                child: Text(
                  AppLocalizations.of(context)!.buttonDisplayFullName,
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
              SizedBox(height: 20),
              Semantics(
                liveRegion: true,
                child: Text(
                  _fullName,
                  style: TextStyle(fontSize: 20),
                ),
              ),
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
    return const Color.fromARGB(255, 69, 112, 83);
  }
  return const Color.fromARGB(255, 0, 100, 0);
}
