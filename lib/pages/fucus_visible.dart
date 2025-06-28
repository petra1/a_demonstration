import 'package:flutter/material.dart';
import 'package:a_demonstration/l10n/app_localizations.dart';

class FucusVisible extends StatefulWidget {
  const FucusVisible({super.key});

  @override
  State<FucusVisible> createState() => _FucusVisibleState();
}

class _FucusVisibleState extends State<FucusVisible> {
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
                    AppLocalizations.of(context)!.focusVisible,
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  AppLocalizations.of(context)!.focusVisibleDescription1,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  AppLocalizations.of(context)!.focusVisibleDescription2,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 60),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: const Color.fromARGB(
                            255,
                            0,
                            100,
                            0,
                          ),
                        ),
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              duration: Durations.extralong4,
                              content: Text(
                                AppLocalizations.of(context)!.toastButton1,
                              ),
                            ),
                          );
                        },
                        child: Text(
                          '1',
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Expanded(
                      child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: const Color.fromARGB(
                            255,
                            0,
                            100,
                            0,
                          ),
                        ),
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              duration: Durations.extralong4,
                              content: Text(
                                AppLocalizations.of(context)!.toastButton2,
                              ),
                            ),
                          );
                        },
                        child: Text(
                          '2',
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Expanded(
                      child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: const Color.fromARGB(
                            255,
                            0,
                            100,
                            0,
                          ),
                        ),
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              duration: Durations.extralong4,
                              content: Text(
                                AppLocalizations.of(context)!.toastButton3,
                              ),
                            ),
                          );
                        },
                        child: Text(
                          '3',
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: TextButton(
                        style: ButtonStyle(
                          backgroundColor:
                              WidgetStateProperty.resolveWith(getColor),
                        ),
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
                        child: Text(
                          '4',
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Expanded(
                      child: TextButton(
                        style: ButtonStyle(
                          backgroundColor:
                              WidgetStateProperty.resolveWith(getColor),
                        ),
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              duration: Durations.extralong4,
                              content: Text(
                                AppLocalizations.of(context)!.toastButton5,
                              ),
                            ),
                          );
                        },
                        child: Text(
                          '5',
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Expanded(
                      child: TextButton(
                        style: ButtonStyle(
                          backgroundColor:
                              WidgetStateProperty.resolveWith(getColor),
                        ),
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              duration: Durations.extralong4,
                              content: Text(
                                AppLocalizations.of(context)!.toastButton6,
                              ),
                            ),
                          );
                        },
                        child: Text(
                          '6',
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
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
