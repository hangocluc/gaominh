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

  void _navigateToScreen(BuildContext context, String route) async {
    // Đóng drawer trước
    Navigator.pop(context);

    // Đợi một chút để animation đóng drawer hoàn thành
    await Future.delayed(const Duration(milliseconds: 300));

    // Kiểm tra context còn tồn tại và không phải route hiện tại
    if (context.mounted && !_isCurrentRoute(context, route)) {
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
              '/',
            ),
            _buildDrawerItem(
              context,
              l10n.products,
              Icons.category,
              '/products',
            ),
            _buildDrawerItem(
              context,
              l10n.about,
              Icons.info,
              '/about',
            ),
            _buildDrawerItem(
              context,
              l10n.news,
              Icons.article,
              '/news',
            ),
            _buildDrawerItem(
              context,
              l10n.activities,
              Icons.event,
              '/activities',
            ),
            _buildDrawerItem(
              context,
              l10n.contact,
              Icons.contact_mail,
              '/contact',
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
    IconData icon,
    String route,
  ) {
    final isCurrentRoute = _isCurrentRoute(context, route);

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: isCurrentRoute
            ? Theme.of(context).colorScheme.secondary
            : Colors.transparent,
        borderRadius: BorderRadius.circular(8),
      ),
      child: InkWell(
        onTap: () => _navigateToScreen(context, route),
        borderRadius: BorderRadius.circular(8),
        child: ListTile(
          leading: Icon(
            icon,
            color: Colors.white,
            size: 20,
          ),
          title: Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontWeight: isCurrentRoute ? FontWeight.bold : FontWeight.normal,
              fontSize: 14,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSocialIcon(IconData icon) {
    return IconButton(
      icon: Icon(icon, color: Colors.white),
      onPressed: () {},
    );
  }
}
