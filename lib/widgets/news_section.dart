import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../screens/news_detail_screen.dart';

class NewsSection extends StatelessWidget {
  const NewsSection({super.key});

  Widget _buildNewsCard(BuildContext context, Map<String, String> news) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => NewsDetailScreen(
                title: news['title']!,
                date: news['date']!,
                image: news['image']!,
                content: news['content']!,
              ),
            ),
          );
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              news['image']!,
              width: double.infinity,
              height: 200,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    news['title']!,
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    news['date']!,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Colors.grey,
                        ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    news['description']!,
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
    );
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final screenWidth = MediaQuery.of(context).size.width;

    final news = [
      {
        'title': l10n.news1_title,
        'date': l10n.news1_date,
        'image': 'assets/images/product1.png',
        'description': l10n.news1_description,
        'content': l10n.news1_content,
      },
      {
        'title': l10n.news2_title,
        'date': l10n.news2_date,
        'image': 'assets/images/product2.png',
        'description': l10n.news2_description,
        'content': l10n.news2_content,
      },
      {
        'title': l10n.news3_title,
        'date': l10n.news3_date,
        'image': 'assets/images/product3.png',
        'description': l10n.news3_description,
        'content': l10n.news3_content,
      },
    ];

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 40),
      child: Column(
        children: [
          Text(
            l10n.news_title,
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(height: 40),
          if (screenWidth > 1200)
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: news
                  .map((item) => Expanded(child: _buildNewsCard(context, item)))
                  .toList(),
            )
          else
            Column(
              children:
                  news.map((item) => _buildNewsCard(context, item)).toList(),
            ),
        ],
      ),
    );
  }
}
