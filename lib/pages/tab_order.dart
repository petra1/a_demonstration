import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class TabOrder extends StatefulWidget {
  const TabOrder({super.key});

  @override
  State<TabOrder> createState() => _TabOrderState();
}

class _TabOrderState extends State<TabOrder> {
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
          child: Center(
            child: Column(
              children: [
                Semantics(
                  header: true,
                  headingLevel: 1,
                  child: Text(
                    AppLocalizations.of(context)!.focusOrder,
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  AppLocalizations.of(context)!.tabOrderDescription1,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 20),
               
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: TextField(
                        controller: _fistnameController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.green,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          label: Text(
                            AppLocalizations.of(context)!.firstEditFieldHint,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 6,
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: TextField(
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
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Semantics(
                  sortKey: OrdinalSortKey(2.0),
                  child: FocusTraversalOrder(
                    order: NumericFocusOrder(2.0),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            WidgetStateProperty.resolveWith(getColor),
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
                  ),
                ),
                Semantics(
                  sortKey: OrdinalSortKey(1.0),
                  child: FocusTraversalOrder(
                    order: NumericFocusOrder(1.0),
                    child: IconButton(
                      iconSize: 48,
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            duration: Durations.extralong4,
                            content: Text(
                              AppLocalizations.of(context)!.toastButton4,
                            ),
                          ),
                        );
                      },
                      icon: Icon(
                        Icons.help,
                        semanticLabel:
                            AppLocalizations.of(context)!.helpQuestion2Button,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30),
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
