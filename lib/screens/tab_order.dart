import 'package:flutter/material.dart';

class TabOrder extends StatelessWidget {
  const TabOrder({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tab order"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 0, 100, 0),
      ),

    );
  }
}