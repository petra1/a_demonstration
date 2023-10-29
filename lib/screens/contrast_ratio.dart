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
            const SizedBox(
              height: 40,
            ),
            Center(
              child: Semantics(
                header: true,
                child: const Text(
                  "Contrast ratio",
                  textScaleFactor: 2.0,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
              width: 600,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "The contrast ratio is often not given enough attention in the development of mobile apps. However, especially in mobile use, a good contrast ratio is important for all users, e.g. when using mobile devices outdoors in sunshine. Below you will find some examples of good and bad contrast ratios.",
                    style: TextStyle(fontSize: 14),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              decoration:
                  const BoxDecoration(color: Color.fromARGB(255, 0, 0, 0)),
              child: const SizedBox(
                width: 600,
                height: 50,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text("Passed with 21.0:1, HEX: #ffffff on #000000.",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            backgroundColor: Colors.black)),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration:
                  const BoxDecoration(color: Color.fromARGB(255, 90, 77, 173)),
              child: const SizedBox(
                width: 600,
                height: 50,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                        "Just passed with 4.5:1, HEX: #00e9ff on #5a4dad.",
                        style: TextStyle(
                            fontSize: 16,
                            color: Color.fromARGB(255, 0, 233, 255),
                            backgroundColor: Color.fromARGB(255, 90, 77, 173))),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 160, 176, 161)),
              child: const SizedBox(
                width: 600,
                height: 50,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text("Failed with 2.3:1, HEX: #ffffff on #a0b0a1.",
                        style: TextStyle(
                            fontSize: 16,
                            color: Color.fromARGB(255, 255, 255, 255),
                            backgroundColor:
                                Color.fromARGB(255, 160, 176, 161))),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 0, 131, 161)),
              child: const SizedBox(
                width: 600,
                height: 50,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text("Just failed with 4.4:1, HEX: #ffffff on #0083a1",
                        style: TextStyle(
                            fontSize: 16,
                            color: Color.fromARGB(255, 255, 255, 255),
                            backgroundColor:
                                Color.fromARGB(255, 0, 131, 161))),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 0, 100, 0)),
              child: const SizedBox(
                width: 600,
                height: 50,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text("Passed with contrast ratio of? HEX #ffffff on #006400.",
                        style: TextStyle(
                            fontSize: 16,
                            color: Color.fromARGB(255, 255, 255, 255),
                            backgroundColor:
                                Color.fromARGB(255, 0, 100, 0))),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 178, 134, 252)),
              child: const SizedBox(
                width: 600,
                height: 50,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text("Failed with contrast ratio of?  HEX #ffffff on #bb86fc",
                        style: TextStyle(
                            fontSize: 16,
                            color: Color.fromARGB(255, 255, 255, 255),
                            backgroundColor:
                                Color.fromARGB(255, 187, 134, 252))),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
