import 'package:flutter/material.dart';

class ContactPrivacy extends StatelessWidget {
  const ContactPrivacy({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contact & Privacy"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 0, 100, 0),
      ),

    );
  }
}