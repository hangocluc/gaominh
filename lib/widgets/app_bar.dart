import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:web_qr/screens/contact_screen.dart';
import 'package:web_qr/screens/home_screen.dart';
import 'package:web_qr/screens/activities_screen.dart';
import 'package:web_qr/screens/products_screen.dart';
import 'package:web_qr/screens/about_screen.dart';
import 'package:web_qr/screens/news_screen.dart';
import 'package:web_qr/widgets/language_switcher.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  void _launchURL(String url) async {
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    }
  }

  void _navigateToScreen(BuildContext context, String route) {
    Navigator.pushNamed(context, route);
  }

  @override
  Widget build(BuildContext context) {
    final isSmallScreen = MediaQuery.of(context).size.width < 800;
    final l10n = AppLocalizations.of(context);

    if (l10n == null) return const SizedBox.shrink();

    return AppBar(
      backgroundColor: Theme.of(context).colorScheme.primary,
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.asset('assets/images/logo.png'),
      ),
      title: !isSmallScreen
          ? Row(
              children: [
                const SizedBox(width: 20),
                _buildNavItem(l10n.home, onTap: () {
                  _navigateToScreen(context, '/');
                }),
                _buildNavItem(l10n.products, onTap: () {
                  _navigateToScreen(context, '/products');
                }),
                _buildNavItem(l10n.about, onTap: () {
                  _navigateToScreen(context, '/about');
                }),
                _buildNavItem(l10n.news, onTap: () {
                  _navigateToScreen(context, '/news');
                }),
                _buildNavItem(l10n.activities, onTap: () {
                  _navigateToScreen(context, '/activities');
                }),
                _buildNavItem(l10n.contact, onTap: () {
                  _navigateToScreen(context, '/contact');
                }),
                const Spacer(),
                _buildSocialIcon(
                    FontAwesomeIcons.facebook, 'https://facebook.com'),
                _buildSocialIcon(
                    FontAwesomeIcons.instagram, 'https://instagram.com'),
                _buildSocialIcon(
                    FontAwesomeIcons.youtube, 'https://youtube.com'),
                const LanguageSwitcher(),
              ],
            )
          : null,
      actions: isSmallScreen
          ? [
              const LanguageSwitcher(),
              IconButton(
                icon: const Icon(Icons.menu, color: Colors.white),
                onPressed: () {
                  Scaffold.of(context).openEndDrawer();
                },
              ),
            ]
          : null,
    );
  }

  Widget _buildNavItem(String title, {required VoidCallback onTap}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: TextButton(
        onPressed: onTap,
        child: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget _buildSocialIcon(IconData icon, String url) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: IconButton(
        icon: FaIcon(icon, color: Colors.white, size: 20),
        onPressed: () => _launchURL(url),
      ),
    );
  }
}
