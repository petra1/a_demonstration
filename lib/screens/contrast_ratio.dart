import 'package:flutter/material.dart';

class ContrastRatio extends StatelessWidget {
  const ContrastRatio({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contrast Ratio"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 0, 100, 0),
      ),

    );
  }
}