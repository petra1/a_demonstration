import 'package:a_demonstration/l10n/app_localizations.dart';
import 'package:flutter/material.dart';

class CheckB extends StatefulWidget {
  const CheckB({super.key});

  @override
  State<CheckB> createState() => _CheckBState();
}

class _CheckBState extends State<CheckB> {
  bool isChecked1 = false;
  bool isChecked2 = false;
  bool isChecked3 = false;
  bool isChecked4 = false;

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
                AppLocalizations.of(context)!.checkBoxesDescription1,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                AppLocalizations.of(context)!.checkBoxesDescription2,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 60.0),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  AppLocalizations.of(context)!.checkboxesQuestion1,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.symmetric(horizontal: 120),
                child: CheckboxListTile(
                  title: Text(
                    AppLocalizations.of(context)!.checkboxQuestionYes,
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  value: isChecked1,
                  onChanged: (newBool1) {
                    setState(() {
                      // Only show snackbar when activating (checking)
                      if (!isChecked1 && newBool1 == true) {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text(
                            AppLocalizations.of(context)!.messageCheckboxQuestion1Yes,
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          duration: Duration(seconds: 2),
                        ));
                      }
                      isChecked1 = newBool1!;
                    });
                  },
                  activeColor: Colors.green,
                  checkColor: Colors.white,
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 120),
                child: CheckboxListTile(
                  title: Text(
                    AppLocalizations.of(context)!.checkboxQuestionNo,
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  value: isChecked2,
                  onChanged: (newBool2) {
                    setState(() {
                      // Only show snackbar when activating (checking)
                      if (!isChecked2 && newBool2 == true) {
                        ScaffoldMessenger.of(context)
                            .showSnackBar(SnackBar(
                          content:  Text(
                            AppLocalizations.of(context)!.messageCheckboxQuestion1No,
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          duration: Duration(seconds: 2),
                        ));
                      }
                      isChecked2 = newBool2!;
                    });
                  },
                  activeColor: Colors.green,
                  checkColor: Colors.white,
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  AppLocalizations.of(context)!.checkboxesQuestion2,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 120),
                child: CheckboxListTile(
                  title: Semantics(
                    value: AppLocalizations.of(context)!
                        .checkboxesQuestionDescription2,
                    child: Text(
                      AppLocalizations.of(context)!.checkboxQuestionYes,
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                  value: isChecked3,
                  onChanged: (newBool3) {
                    setState(() {
                      // Only show snackbar when activating (checking)
                      if (!isChecked3 && newBool3 == true) {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text(
                            AppLocalizations.of(context)!.messageCheckboxQuestion2Yes,
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          duration: Duration(seconds: 2),
                        ));
                      }
                      isChecked3 = newBool3!;
                    });
                  },
                  activeColor: Colors.green,
                  checkColor: Colors.white,
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 120),
                child: CheckboxListTile(
                  title: Semantics(
                    value: AppLocalizations.of(context)!
                        .checkboxesQuestionDescription2,
                    child: Text(
                      AppLocalizations.of(context)!.checkboxQuestionNo,
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                  value: isChecked4,
                  onChanged: (newBool4) {
                    setState(() {
                      // Only show snackbar when activating (checking)
                      if (!isChecked4 && newBool4 == true) {
                        ScaffoldMessenger.of(context)
                            .showSnackBar(SnackBar(
                          content: Text(
                            AppLocalizations.of(context)!.messageCheckboxQuestion2No,
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          duration: Duration(seconds: 2),
                        ));
                      }
                      isChecked4 = newBool4!;
                    });
                  },
                  activeColor: Colors.green,
                  checkColor: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
