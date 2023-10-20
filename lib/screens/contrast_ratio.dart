import 'package:flutter/material.dart';

class ContrastRatio extends StatelessWidget {
  const ContrastRatio({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 100, 0),
      ),
      body: Column(
        children: [
          const SizedBox(height: 40,),
          Center(
            child: Semantics (
                header: true,
                child: const Text("Contrast ratio",
                textScaleFactor: 2.0,  ),
            ),
          ),
          const SizedBox(height: 20,),

         const Align(
             alignment: Alignment.topLeft,
             child: Text("Todo, bla, bla, , bla, bla", ),
         ),
        ],
      ),
    );
  }
}