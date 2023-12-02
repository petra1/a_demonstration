import 'package:flutter/material.dart';

class ContrastRatio extends StatelessWidget {
  const ContrastRatio({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 100, 0),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Container(
        child: Column(
          children: [
            const SizedBox(height: 40,),
            Center(
              child: Semantics(
                header: true,
                  child:
                  const Text("Contrast Ratio",
                  style: TextStyle(fontSize: 22), ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.centerLeft,
                  child: Text("The contrast ratio is often not given enough attention in the development of mobile apps. However, especially in mobile use, a good contrast ratio is important for all users, e.g. when using mobile devices outdoors in sunshine. Below you will find some examples of good and bad contrast ratios.",
                  style: TextStyle(fontSize: 16),),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 5,
                ),
                Expanded(
                  child: Container(
                    color: Colors.black,
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("Passed with 21.0:1, HEX: #ffffff on #000000",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),

                  ),

                ),
                const SizedBox(
                  width: 5,
                ),
                Expanded(
                    child: Container(
                      color: const Color.fromARGB(255, 90,77, 173),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("Just passed with 4.5:1, HEX: #00e9ff on #5a4dad",
                            style: TextStyle(color: Color.fromARGB(255, 0, 233, 255))
                        ),
                      ),
                    )
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 5,
                ),
                Expanded(
                  child: Container(
                    color: const Color.fromARGB(255, 160,176, 161),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("Failed with 2.3:1, HEX: #ffffff on #a0b0a1.",
                        style: TextStyle(color: Colors.white)
                            ),
                    ),
                )
                ),
                 const SizedBox(
                  width: 5,
                ),
                Expanded(
                    child: Container(
                      color: const Color.fromARGB(255, 0,132, 161),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("Just failed with 4.4:1, HEX: #ffffff on #0083a1",
                            style: TextStyle(color: Colors.white)
                        ),
                      ),
                    )
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
             Row(

              children: [
                const SizedBox(
                  width: 5,
                ),
                Expanded(
                    child: Container(
                      color: const Color.fromARGB(255, 187,134, 252),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("Failed with contrast ratio of? HEX #ffffff on #bb86fc ",
                            style: TextStyle(color: Colors.white)
                        ),
                      ),
                    )
                ),
                const SizedBox(
                  width: 5,
                ),
                Expanded(
                    child: Container(
                      color: const Color.fromARGB(255, 0,100, 0),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("Passed with contrast ratio of? HEX #ffffff on #006400 ",
                            style: TextStyle(color: Colors.white)
                        ),
                      ),
                    )
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}