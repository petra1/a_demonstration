import 'package:a_demonstration/pages/contrast_ratio.dart';
import 'package:a_demonstration/pages/graphics.dart';
import 'package:a_demonstration/pages/header.dart';
import 'package:a_demonstration/pages/home_page.dart';
import 'package:a_demonstration/pages/image_button.dart';
import 'package:a_demonstration/widgets/app_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
              ),
              child: Column(
                children: [
                  const AppImage(),
                  Text(
                    'Ritter Apps',
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          color: Colors.black45
                        ),
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
              onTap: () {},
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
              onTap: () {},
            ),
            ListTile(
              leading: Icon(
                Icons.visibility,
                size: 24,
              ),
              title: Text(
                AppLocalizations.of(context)!.focusVisible,
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(
                Icons.language,
                size: 24,
              ),
              title: Text(
                AppLocalizations.of(context)!.language,
              ),
              onTap: () {},
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
              onTap: () {},
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
