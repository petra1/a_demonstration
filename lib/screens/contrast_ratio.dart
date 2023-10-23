import 'package:flutter/material.dart';

class ContrastRatio extends StatelessWidget {
  const ContrastRatio({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 100, 0),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 40,),
            Center(
              child: Semantics (
                  header: true,
                  child: const Text("Contrast ratio",
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
                   child: Text("The contrast ratio is often not given enough attention in the development of mobile apps. However, especially in mobile use, a good contrast ratio is important for all users, e.g. when using mobile devices outdoors in sunshine. Below you will find some examples of good and bad contrast ratios.",
                   style: TextStyle(fontSize: 14),),
               ),
             ),
           ),
            const SizedBox(height: 20,),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text("Todo, bla, bla, , bla, bla",
                    style: TextStyle(
                      color: Colors.white,
                      backgroundColor: Colors.black,
                    ),),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text("Todo, bla, bla, , bla, bla", ),
                  ),
                ),
              ],
            ),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text("Todo, bla, bla, , bla, bla", ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text("Todo, bla, bla, , bla, bla", ),
                  ),
                ),
              ],
            ),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text("Todo, bla, bla, , bla, bla",
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text("Todo, bla, bla, , bla, bla", ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}