import 'package:flutter/material.dart';

class EditFields extends StatelessWidget {
  const   EditFields({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Edit Fields"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 0, 100, 0),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
    );
  }
}