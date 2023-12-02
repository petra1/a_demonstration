import 'package:flutter/material.dart';
import 'package:a_demonstration/navbar.dart';
import 'package:flutter/services.dart';

main() {
  runApp(const MainScreen());
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: const NavBar(),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 0, 100, 0),
          systemOverlayStyle: SystemUiOverlayStyle.light ,
          iconTheme: const IconThemeData(color: Colors.white),

        ),
        body: const Center(
          child : Column(
            mainAxisAlignment: MainAxisAlignment.center ,
            children: [
              AppImage(),
                SizedBox(height: 40),
                Text(
                "A Demonstration",
                  style: TextStyle(color: Color.fromARGB(255, 0, 100, 0,),
                  fontSize: 35),
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
