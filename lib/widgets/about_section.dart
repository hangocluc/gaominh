import 'package:flutter/material.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenWidth < 800;
    final statistics = [
      {'number': '10+', 'label': 'NĂM KINH NGHIỆM'},
      {'number': '25+', 'label': 'QUỐC GIA XUẤT KHẨU'},
      {'number': '500+', 'label': 'KHÁCH HÀNG'},
      {'number': '300+', 'label': 'CONTAINERS HÀNG THÁNG'},
    ];

    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 80,
        horizontal: screenWidth > 600 ? 20 : 10,
      ),
      child: Column(
        children: [
          Text(
            'GIỚI THIỆU',
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.primary,
                ),
          ),
          const SizedBox(height: 40),
          Container(
            constraints: const BoxConstraints(maxWidth: 800),
            child: Text(
              'CÔNG TY TNHH CÔNG NGHIỆP VÀ THƯƠNG MẠI VIỆT NAM GAOMINH chuyên sản xuất và xuất khẩu các loại ván ép như: '
              'ván phủ phim, ván phủ Melamine, ván ép Birch, ván Poplar, MDF, Ván dăm, v.v. '
              'Sản phẩm của chúng tôi được tin dùng tại nhiều thị trường trong và ngoài nước nhờ chất lượng vượt trội '
              'và quy trình sản xuất nghiêm ngặt.',
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    height: 1.8,
                  ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 60),
          if (isSmallScreen)
            SizedBox(
              height: 100,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                itemCount: statistics.length,
                separatorBuilder: (context, index) => const SizedBox(width: 40),
                itemBuilder: (context, index) => _buildStatistic(
                  context,
                  statistics[index]['number']!,
                  statistics[index]['label']!,
                ),
              ),
            )
          else
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: statistics
                  .map((stat) => _buildStatistic(
                        context,
                        stat['number']!,
                        stat['label']!,
                      ))
                  .toList(),
            ),
        ],
      ),
    );
  }

  Widget _buildStatistic(BuildContext context, String number, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          number,
          style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                color: Theme.of(context).colorScheme.secondary,
                fontWeight: FontWeight.bold,
              ),
        ),
        const SizedBox(height: 10),
        Text(
          label,
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
      ],
    );
  }
}
