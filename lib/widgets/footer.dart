import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  void _launchURL(String url) async {
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenWidth < 800;
    final l10n = AppLocalizations.of(context);
    if (l10n == null) return const SizedBox.shrink();

    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 60,
        horizontal: screenWidth > 600 ? 20 : 10,
      ),
      color: Theme.of(context).colorScheme.primary,
      child: Column(
        children: [
          Wrap(
            spacing: 40,
            runSpacing: 40,
            alignment: WrapAlignment.spaceAround,
            children: [
              _buildInfoColumn(
                context,
                l10n.footer_company_info,
                [
                  l10n.footer_company_name,
                  l10n.footer_address,
                  l10n.footer_email,
                  l10n.footer_phone,
                ],
                isSmallScreen ? screenWidth - 40 : 300,
              ),
              _buildInfoColumn(
                context,
                l10n.footer_products,
                [
                  l10n.footer_interior_plywood,
                  l10n.footer_construction_plywood,
                  l10n.footer_industrial_wood,
                  l10n.footer_plywood_accessories,
                  l10n.footer_cnc_cutting,
                  l10n.footer_other_wood_products,
                ],
                isSmallScreen ? screenWidth - 40 : 250,
              ),
              _buildInfoColumn(
                context,
                l10n.footer_policies,
                [
                  l10n.footer_privacy_policy,
                  l10n.footer_shipping_policy,
                  l10n.footer_payment_policy,
                  l10n.footer_certificates,
                ],
                isSmallScreen ? screenWidth - 40 : 250,
              ),
            ],
          ),
          const SizedBox(height: 40),
          const Divider(color: Colors.white30),
          const SizedBox(height: 20),
          Wrap(
            spacing: 20,
            runSpacing: 20,
            alignment: WrapAlignment.center,
            children: [
              _buildSocialIcon(
                  FontAwesomeIcons.facebook, 'https://facebook.com'),
              _buildSocialIcon(
                  FontAwesomeIcons.instagram, 'https://instagram.com'),
              _buildSocialIcon(FontAwesomeIcons.youtube, 'https://youtube.com'),
              _buildSocialIcon(
                  FontAwesomeIcons.linkedin, 'https://linkedin.com'),
            ],
          ),
          const SizedBox(height: 20),
          // Container(
          //   padding: const EdgeInsets.symmetric(horizontal: 20),
          //   child: Text(
          //     '© Copyright belongs to Công ty Cổ phần Kinh Doanh Thương Mại và Xuất Nhập Khẩu Trường Thịnh',
          //     style: Theme.of(context).textTheme.bodyMedium?.copyWith(
          //           color: Colors.white70,
          //         ),
          //     textAlign: TextAlign.center,
          //   ),
          // ),
        ],
      ),
    );
  }

  Widget _buildInfoColumn(
      BuildContext context, String title, List<String> items, double width) {
    return Container(
      width: width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(height: 20),
          ...items.map((item) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  item,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Colors.white70,
                      ),
                ),
              )),
        ],
      ),
    );
  }

  Widget _buildSocialIcon(IconData icon, String url) {
    return IconButton(
      icon: FaIcon(icon, color: Colors.white, size: 24),
      onPressed: () => _launchURL(url),
    );
  }
}
