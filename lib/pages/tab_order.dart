import 'package:a_demonstration/widgets/focus_group.dart';
import 'package:flutter/material.dart';

import 'package:a_demonstration/l10n/app_localizations.dart';

class TabOrder extends StatefulWidget {
  const TabOrder({super.key});

  @override
  State<TabOrder> createState() => _TabOrderState();
}

class _TabOrderState extends State<TabOrder> {
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
                FocusGroup()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
