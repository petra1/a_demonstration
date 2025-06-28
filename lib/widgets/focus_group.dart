import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:a_demonstration/l10n/app_localizations.dart';

class FocusGroup extends StatefulWidget {
  const FocusGroup({super.key});

  @override
  State<FocusGroup> createState() => _FocusGroupState();
}

class _FocusGroupState extends State<FocusGroup> {
  final TextEditingController _fistnameController = TextEditingController();
  final TextEditingController _lastnameController = TextEditingController();
  String _fullName = '';

  @override
  Widget build(BuildContext context) {
    return FocusTraversalGroup(
      policy: OrderedTraversalPolicy(),
      child: Column(
        children: <Widget>[
          FocusTraversalOrder(
            order: NumericFocusOrder(1.0),
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
          const SizedBox(height: 30.0),
          FocusTraversalOrder(
            order: NumericFocusOrder(2.0),
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
          FocusTraversalOrder(
            order: NumericFocusOrder(4.0),
            child: Semantics(
               sortKey: OrdinalSortKey(2.0),
              child: ElevatedButton(
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
            ),
          ),
          FocusTraversalOrder(
            order: NumericFocusOrder(3.0),
            child: Semantics(
              sortKey: OrdinalSortKey(1.0),
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
          FocusTraversalOrder(
            order: NumericFocusOrder(5.0),
            child: Semantics(
              sortKey: OrdinalSortKey(1.0), 
              liveRegion: true,
              child: Text(
                _fullName,
                style: TextStyle(fontSize: 20),
              ),
            ),
          )
        ],
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
