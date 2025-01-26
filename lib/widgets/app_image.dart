import 'package:flutter/material.dart';

class AppImage extends StatelessWidget {
  const AppImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          image: const DecorationImage(
              image: AssetImage('assets/images/ic_logo.png')),
          border: Border.all(color: Colors.black, width: 1.0),
          borderRadius: BorderRadius.circular(200),
        ),
      ),
    );
  }
}
