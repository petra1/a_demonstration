import 'package:flutter/material.dart';

import 'package:a_demonstration/main.dart';
import 'package:a_demonstration/screens/alternative_text.dart';
import 'package:a_demonstration/screens/image_buttons.dart';
import 'package:a_demonstration/screens/headings.dart';
import 'package:a_demonstration/screens/edit_fields.dart';
import 'package:a_demonstration/screens/tab_order.dart';
import 'package:a_demonstration/screens/contrast_ratio.dart';
import 'package:a_demonstration/screens/contact_privacy.dart';
import 'package:a_demonstration/screens/help.dart';




class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text("Ritter Apps"),
            accountEmail: const Text("ritter1.apps@gmail.com"),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset("assets/images/App_logo.png"),
              ),
            ),
            decoration:
                const BoxDecoration(color: Color.fromARGB(255, 0, 100, 0)),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text("Home"),
            onTap: () => onItemPressed(context, index: 0),
          ),
          ListTile(
            leading: const Icon(Icons.gif_box),
            title: const Text("Alternative text"),
            onTap: () => onItemPressed(context, index: 1),
          ),
          ListTile(
              leading: const Icon(Icons.radio_button_on),
              title: const Text("Image buttons"),
              onTap: () => onItemPressed(context, index: 2)),
          ListTile(
            leading: const Icon(Icons.notes),
            title: const Text("Headings"),
              onTap: () => onItemPressed(context, index: 3),
          ),
          ListTile(
            leading: const Icon(Icons.edit),
            title: const Text("Edit fields"),
            onTap: () => onItemPressed(context, index: 4),
          ),
          ListTile(
            leading: const Icon(Icons.keyboard_tab_outlined),
            title: const Text("Tab order"),
            onTap: () => onItemPressed(context, index: 5),
          ),
          ListTile(
            leading: const Icon(Icons.contrast),
            title: const Text("Contrast ratio"),
            onTap: () => onItemPressed(context, index: 6),
          ),
          const Divider(
            thickness: 1, color: Colors.black,
          ),
          ListTile(
            leading: const Icon(Icons.contact_mail),
            title: const Text("Contact & Privacy"),
            onTap: () => onItemPressed(context, index: 7),
          ),
          ListTile(
            leading: const Icon(Icons.help),
            title: const Text("Help"),
            onTap: () => onItemPressed(context, index: 8),
          ),
        ],
      ),
    );
  }

  void onItemPressed(BuildContext context, {required int index}) {
    Navigator.pop(context);

    switch (index) {
      case 0:
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const MainScreen()));
      case 1:
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const AlternativeText()));
      case 2:
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const ImageButtons()));
      case 3:
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const Headings()));
      case 4:
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const EditFields()));
      case 5:
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const TabOrder()));
      case 6:
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const ContrastRatio()));
      case 7:
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const ContactPrivacy()));
      case 8:
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const Help()));
      default:
        Navigator.pop(context);
        break;
    }
  }
}
