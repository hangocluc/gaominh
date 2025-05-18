import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

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
                'THÔNG TIN CÔNG TY',
                [
                  'Tên công ty: CÔNG TY TNHH CÔNG NGHIỆP VÀ THƯƠNG MẠI VIỆT NAM GAOMINH',
                  'Địa chỉ: Tầng 1, Số 9B, ngõ 391 Đường Nguyễn Văn Cừ, Phường Võ Cường, Thành phố Bắc Ninh, Tỉnh Bắc Ninh, Việt Nam',
                  'Email: general.gaominh@gmail.com',
                  'Điện thoại: 039 4126881 (Mr.Bai)',
                ],
                isSmallScreen ? screenWidth - 40 : 300,
              ),
              _buildInfoColumn(
                context,
                'SẢN PHẨM',
                [
                  'Ván Ép Nội Thất',
                  'Ván Ép Xây Dựng',
                  'Gỗ Công Nghiệp',
                  'PHỤ KIỆN VÁN ÉP',
                  'CẮT CNC',
                  'CÁC SẢN PHẨM GỖ KHÁC',
                ],
                isSmallScreen ? screenWidth - 40 : 250,
              ),
              _buildInfoColumn(
                context,
                'CHÍNH SÁCH',
                [
                  'Chính Sách Bảo Mật',
                  'Chính Sách Vận Chuyển',
                  'Chính Sách Thanh Toán',
                  'Giấy Chứng Nhận',
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
