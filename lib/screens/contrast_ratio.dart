import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class ContrastRatio extends StatelessWidget {
  const ContrastRatio({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 100, 0),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              const SizedBox(height: 40,),
              Center(
                child: Semantics(
                  header: true,
                    child:
                    Text((AppLocalizations.of(context)!.contrastHeader),
                    style: const TextStyle(fontSize: 22), ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
               Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                    child: Text((AppLocalizations.of(context)!.contrastDescription),
                    style: const TextStyle(fontSize: 16),),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: Container(
                      width: 20,
                      height: 80 ,
                      color: Colors.black,
                      child:  Padding(
                        padding: const EdgeInsets.all(8.0),
                        child:  Text((AppLocalizations.of(context)!.contrastPassed),
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
        
                    ),
        
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Expanded(
                      child: Container(
                        width: 20,
                        height: 80,
                        color: const Color.fromARGB(255, 90,77, 173),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text((AppLocalizations.of(context)!.contrastJustPassed),
                              style: const TextStyle(color: Color.fromARGB(255, 0, 233, 255))
                          ),
                        ),
                      )
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: Container(
                      width: 20,
                      height: 80 ,
                      color: const Color.fromARGB(255, 160,176, 161),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text((AppLocalizations.of(context)!.contrastFailed),
                          style: const TextStyle(color: Colors.white)
                              ),
                      ),
                  )
                  ),
                   const SizedBox(
                    width: 5,
                  ),
                  Expanded(
                      child: Container(
                        width: 20,
                        height: 80 ,
                        color: const Color.fromARGB(255, 0,132, 161),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text((AppLocalizations.of(context)!.contrastJustFailed),
                              style: const TextStyle(color: Colors.white)
                          ),
                        ),
                      )
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
               Row(
        
                children: [
                  const SizedBox(
                    width: 5,
                  ),
                  Expanded(
                      child: Container(
                        width: 20,
                        height: 80 ,
                        color: const Color.fromARGB(255, 187,134, 252),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text((AppLocalizations.of(context)!.contrastFailedWith),
                              style: const TextStyle(color: Colors.white)
                          ),
                        ),
                      )
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Expanded(
                      child: Container(
                        width: 20,
                        height: 80 ,
                        color: const Color.fromARGB(255, 0,100, 0),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text((AppLocalizations.of(context)!.contrastPassedWith),
                              style: const TextStyle(color: Colors.white)
                          ),
                        ),
                      )
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}