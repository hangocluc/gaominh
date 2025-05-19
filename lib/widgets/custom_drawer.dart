import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:web_qr/screens/contact_screen.dart';
import 'package:web_qr/screens/home_screen.dart';
import 'package:web_qr/screens/activities_screen.dart';
import 'package:web_qr/screens/products_screen.dart';
import 'package:web_qr/screens/about_screen.dart';
import 'package:web_qr/screens/news_screen.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  void _navigateToScreen(BuildContext context, String route) {
    Navigator.pushNamed(context, route);
  }

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
            _buildDrawerItem(
              context,
              l10n.home,
              Icons.home,
              onTap: () => _navigateToScreen(context, '/'),
            ),
            _buildDrawerItem(
              context,
              l10n.products,
              Icons.category,
              onTap: () => _navigateToScreen(context, '/products'),
            ),
            _buildDrawerItem(
              context,
              l10n.about,
              Icons.info,
              onTap: () => _navigateToScreen(context, '/about'),
            ),
            _buildDrawerItem(
              context,
              l10n.news,
              Icons.article,
              onTap: () => _navigateToScreen(context, '/news'),
            ),
            _buildDrawerItem(
              context,
              l10n.activities,
              Icons.event,
              onTap: () => _navigateToScreen(context, '/activities'),
            ),
            _buildDrawerItem(
              context,
              l10n.contact,
              Icons.contact_mail,
              onTap: () => _navigateToScreen(context, '/contact'),
            ),
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

  Widget _buildDrawerItem(
    BuildContext context,
    String title,
    IconData icon, {
    VoidCallback? onTap,
  }) {
    return ListTile(
      leading: Icon(icon, color: Colors.white),
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: onTap ?? () {},
    );
  }

  Widget _buildSocialIcon(IconData icon) {
    return IconButton(
      icon: Icon(icon, color: Colors.white),
      onPressed: () {},
    );
  }
}
