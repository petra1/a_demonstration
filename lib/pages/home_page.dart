import 'package:flutter/material.dart';
import 'package:a_demonstration/app_image.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 100, 0),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
           AppImage(),
           SizedBox(height: 40,),
            Text(
              "A  Demonstration",
              style: TextStyle(
                  color: Color.fromARGB(
                    255,
                    0,
                    100,
                    0,
                  ),
                  fontSize: 35),
            ),
          ],
        ),
      ),
    );
  }
}