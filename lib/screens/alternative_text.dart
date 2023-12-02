import 'package:flutter/material.dart';

class AlternativeText extends StatelessWidget {
  const AlternativeText({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Alternative Text"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 0, 100, 0),
        iconTheme: const IconThemeData(color: Colors.white),
      ),

    );
  }
}