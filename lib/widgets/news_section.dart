import 'package:flutter/material.dart';

class NewsSection extends StatelessWidget {
  const NewsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final news = [
      {
        'title': 'Ván Ép Phủ Phim là Gì? Ứng Dụng Trong Xây Dựng Hiện Đại',
        'date': '14 Tháng 03',
        'image': 'assets/images/news1.jpg',
        'description':
            'Trong ngành xây dựng hiện đại, việc lựa chọn vật liệu phù hợp đóng vai trò quan trọng trong sự thành công của mọi công trình...',
      },
      {
        'title': 'So Sánh Ván Ép Trang Trí và Gỗ Tự Nhiên: Nên Chọn Loại Nào?',
        'date': '12 Tháng 03',
        'image': 'assets/images/news2.jpg',
        'description':
            'Ván ép công nghiệp và gỗ tự nhiên là hai vật liệu phổ biến trong ngành nội thất và xây dựng. Tuy nhiên, việc lựa chọn...',
      },
      {
        'title':
            'Bật Mí 3 Loại Gỗ Ép Đang Làm Mưa Làm Gió Trong Thiết Kế Nội Thất Hiện Đại',
        'date': '03 Tháng 03',
        'image': 'assets/images/news3.jpg',
        'description':
            'Bạn đang muốn cải tạo ngôi nhà hay thiết kế nội thất mới? Việc chọn đúng loại gỗ ép có thể tạo nên sự khác biệt lớn...',
      },
    ];

    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 80,
        horizontal: screenWidth > 600 ? 20 : 10,
      ),
      child: Column(
        children: [
          Text(
            'TIN TỨC',
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.primary,
                ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 40),
          Wrap(
            spacing: 20,
            runSpacing: 20,
            alignment: WrapAlignment.center,
            children: news
                .map((article) => _buildNewsCard(context, article))
                .toList(),
          ),
        ],
      ),
    );
  }

  Widget _buildNewsCard(BuildContext context, Map<String, String> article) {
    final screenWidth = MediaQuery.of(context).size.width;
    final cardWidth = screenWidth > 1200
        ? 350.0
        : screenWidth > 800
            ? 300.0
            : screenWidth > 600
                ? (screenWidth - 60) / 2
                : screenWidth - 40;

    return Container(
      width: cardWidth,
      child: Card(
        elevation: 4,
        child: InkWell(
          onTap: () {},
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                article['image']!,
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      article['date']!,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: Colors.grey[600],
                          ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      article['title']!,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      article['description']!,
                      style: Theme.of(context).textTheme.bodyMedium,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
