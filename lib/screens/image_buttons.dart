import 'package:flutter/material.dart';

class ImageButtons extends StatelessWidget {
  const ImageButtons({Key? key}) : super(key: key);
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
              child: const Text("Image buttons",
                textScaleFactor: 2.0,  ),
            ),
          ),
          const SizedBox(height: 20,),

          const SizedBox(
            width: 600,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text("This example shows how TalkBack behaves with graphic buttons that lack alternative text, and at the same time shows how the buttons can be made more usable for people with limited fine motor skills.",
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
          ),
        ],
      ),

    );
  }
}