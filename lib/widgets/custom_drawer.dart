import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);

    if (l10n == null) return const SizedBox.shrink();

    return Drawer(
      child: Container(
        color: Theme.of(context).colorScheme.primary,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
              ),
              child: Image.asset(
                'assets/images/logo.png',
                fit: BoxFit.contain,
              ),
            ),
            _buildDrawerItem(context, l10n.home, Icons.home),
            _buildDrawerItem(context, l10n.products, Icons.category),
            _buildDrawerItem(context, l10n.about, Icons.info),
            _buildDrawerItem(context, l10n.news, Icons.article),
            _buildDrawerItem(context, l10n.activities, Icons.event),
            _buildDrawerItem(context, l10n.contact, Icons.contact_mail),
            const Divider(color: Colors.white30),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildSocialIcon(FontAwesomeIcons.facebook),
                  _buildSocialIcon(FontAwesomeIcons.instagram),
                  _buildSocialIcon(FontAwesomeIcons.youtube),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDrawerItem(BuildContext context, String title, IconData icon) {
    return ListTile(
      leading: Icon(icon, color: Colors.white),
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: () {
        Navigator.pop(context);
      },
    );
  }

  Widget _buildSocialIcon(IconData icon) {
    return IconButton(
      icon: FaIcon(icon, color: Colors.white),
      onPressed: () {},
    );
  }
}
