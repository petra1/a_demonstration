import 'package:flutter/material.dart';

class Headings extends StatelessWidget {
  const Headings({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Headings"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 0, 100, 0),
      ),

    );
  }
}