import 'package:a_demonstration/pages/check_b.dart';
import 'package:a_demonstration/pages/contrast_ratio.dart';
import 'package:a_demonstration/pages/graphics.dart';
import 'package:a_demonstration/pages/header.dart';
import 'package:a_demonstration/pages/help.dart';
import 'package:a_demonstration/pages/home_page.dart';
import 'package:a_demonstration/pages/image_button.dart';
import 'package:a_demonstration/pages/tab_order.dart';
import 'package:a_demonstration/widgets/app_image.dart';
import 'package:flutter/material.dart';
import 'package:a_demonstration/pages/edit_fields.dart';
import 'package:a_demonstration/l10n/app_localizations.dart';

import '../pages/fucus_visible.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            DrawerHeader(
              padding: const EdgeInsets.all(20),
              decoration:
                  BoxDecoration(color: const Color.fromARGB(244, 0, 100, 0)),
              child: Column(
                children: [
                  const AppImage(),
                  Text(
                    'Ritter Apps',
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall!
                        .copyWith(color: Colors.white),
                  )
                ],
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.home,
                size: 24,
              ),
              title: Text(
                AppLocalizations.of(context)!.home,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(
                Icons.gif,
                size: 24,
              ),
              title: Text(
                AppLocalizations.of(context)!.alternativeText,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Graphics(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(
                Icons.radio_button_checked_outlined,
                size: 24,
              ),
              title: Text(
                AppLocalizations.of(context)!.imageButtons,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ImageButton(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(
                Icons.article_rounded,
                size: 24,
              ),
              title: Text(
                AppLocalizations.of(context)!.headings,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Header(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(
                Icons.edit,
                size: 24,
              ),
              title: Text(
                AppLocalizations.of(context)!.editFields,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EditFields(),
                  ),
                );
              },
            ),
             ListTile(
              leading: Icon(
                Icons.check_box,
                size: 24,
              ),
              title: Text(
                AppLocalizations.of(context)!.checkBoxes,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CheckB(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(
                Icons.brightness_4_outlined,
                size: 24,
              ),
              title: Text(
                AppLocalizations.of(context)!.contrastRatio,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ContrastRatio(),
                  ),
                );
              },
            ),
            ListTile(
                leading: Icon(
                  Icons.arrow_right_alt,
                  size: 24,
                ),
                title: Text(
                  AppLocalizations.of(context)!.focusOrder,
                ),
               onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TabOrder(),
                  ),
                );
              },
                ),
            ListTile(
              leading: Icon(
                Icons.visibility,
                size: 24,
              ),
              title: Text(
                AppLocalizations.of(context)!.focusVisible,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FucusVisible(),
                  ),
                );
              },
            ),
          
            Divider(),
            ListTile(
              leading: Icon(
                Icons.contact_emergency,
                size: 24,
              ),
              title: Text(
                AppLocalizations.of(context)!.privacyContact,
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(
                Icons.help,
                size: 24,
              ),
              title: Text(
                AppLocalizations.of(context)!.help,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Help(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(
                Icons.description,
                size: 24,
              ),
              title: Text(
                AppLocalizations.of(context)!.about,
              ),
              onTap: () {},
            ),
            SizedBox(
              height: 80,
            ),
          ],
        ),
      ),
    );
  }
}
