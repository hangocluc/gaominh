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
    if (!_isCurrentRoute(context, route)) {
      Navigator.of(context).pushNamedAndRemoveUntil(
        route,
        (Route<dynamic> route) => false,
      );
    }
  }

  bool _isCurrentRoute(BuildContext context, String route) {
    final currentRoute = ModalRoute.of(context)?.settings.name;
    return currentRoute == route;
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
                _buildNavItem(context, l10n.home, '/', true),
                _buildNavItem(context, l10n.products, '/products', true),
                _buildNavItem(context, l10n.about, '/about', true),
                _buildNavItem(context, l10n.news, '/news', true),
                _buildNavItem(context, l10n.activities, '/activities', true),
                _buildNavItem(context, l10n.contact, '/contact', true),
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

  Widget _buildNavItem(
      BuildContext context, String title, String route, bool checkRoute) {
    final isCurrentRoute = checkRoute ? _isCurrentRoute(context, route) : false;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: TextButton(
        onPressed: () => _navigateToScreen(context, route),
        style: TextButton.styleFrom(
          backgroundColor: isCurrentRoute
              ? Theme.of(context).colorScheme.secondary
              : Colors.transparent,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ).copyWith(
          overlayColor: MaterialStateProperty.resolveWith<Color?>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.hovered)) {
                return Theme.of(context).colorScheme.secondary.withOpacity(0.2);
              }
              return null;
            },
          ),
        ),
        child: Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontWeight: isCurrentRoute ? FontWeight.bold : FontWeight.normal,
            fontSize: 14,
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
