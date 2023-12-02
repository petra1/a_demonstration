import 'package:flutter/material.dart';

class ContactPrivacy extends StatelessWidget {
  const ContactPrivacy({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contact & Privacy"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 0, 100, 0),
        iconTheme: const IconThemeData(color: Colors.white),
      ),

    );
  }
}