import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:a_demonstration/navbar.dart';

main() => runApp(const MainScreen());

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: const NavBar(),
        appBar: AppBar(
          title: const Text("A Demonstration"),
          centerTitle: true,
          elevation: 10,
          systemOverlayStyle: SystemUiOverlayStyle.dark,
          backgroundColor: const Color.fromARGB(255, 0, 100, 0) ,
        ),
        body: const Center(
          child : Column(
            mainAxisAlignment: MainAxisAlignment.center ,
            children: [
              AppImage(),
                SizedBox(height: 30),
                Text(
                "A Demonstration",
                textScaleFactor: 2.0,
                  style: TextStyle(color: Color.fromARGB(255, 0, 100, 0)),
              ),
            ],
          ),
        ),

      ),
    );
  }
}

class AppImage extends StatelessWidget {
  const AppImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      decoration: BoxDecoration(
        image: const DecorationImage(image: AssetImage("assets/images/App_logo.png")),
        border: Border.all(color: Colors.black, width: 1.0),
        borderRadius: BorderRadius.circular(200),
      ),
    );
  }
}
