import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:web_qr/screens/activity_detail_screen.dart';

class ActivityItem {
  final String title;
  final String date;
  final String month;
  final String description;
  final String imageUrl;
  final String content;

  ActivityItem({
    required this.title,
    required this.date,
    required this.month,
    required this.description,
    required this.imageUrl,
    required this.content,
  });
}

class ActivitySection extends StatelessWidget {
  ActivitySection({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    if (l10n == null) return const SizedBox.shrink();

    final screenWidth = MediaQuery.of(context).size.width;
    final crossAxisCount = screenWidth > 1200
        ? 3
        : screenWidth > 800
            ? 2
            : 1;

    final List<ActivityItem> activities = [
      ActivityItem(
        title: l10n.activity1_title,
        date: "02",
        month: "T01",
        description: l10n.activity1_description,
        imageUrl: "assets/images/product1.png",
        content: l10n.activity1_content,
      ),
      ActivityItem(
        title: l10n.activity2_title,
        date: "20",
        month: "T12",
        description: l10n.activity2_description,
        imageUrl: "assets/images/product2.png",
        content: l10n.activity2_content,
      ),
      ActivityItem(
        title: l10n.activity3_title,
        date: "31",
        month: "T10",
        description: l10n.activity3_description,
        imageUrl: "assets/images/product3.png",
        content: l10n.activity3_content,
      ),
    ];

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            l10n.activities_title,
            style: GoogleFonts.roboto(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 30),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: crossAxisCount,
              childAspectRatio: screenWidth > 600 ? 1 : 0.8,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
            ),
            itemCount: activities.length,
            itemBuilder: (context, index) {
              return ActivityCard(activity: activities[index]);
            },
          ),
        ],
      ),
    );
  }
}

class ActivityCard extends StatelessWidget {
  final ActivityItem activity;

  const ActivityCard({
    super.key,
    required this.activity,
  });

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    if (l10n == null) return const SizedBox.shrink();

    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ActivityDetailScreen(activity: activity),
          ),
        );
      },
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(8)),
              child: Image.asset(
                activity.imageUrl,
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Column(
                          children: [
                            Text(
                              activity.month,
                              style: GoogleFonts.roboto(
                                fontSize: 14,
                                color: Colors.grey[600],
                              ),
                            ),
                            Text(
                              activity.date,
                              style: GoogleFonts.roboto(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Text(
                          activity.title,
                          style: GoogleFonts.roboto(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text(
                    activity.description,
                    style: GoogleFonts.roboto(
                      fontSize: 14,
                      color: Colors.grey[600],
                    ),
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
}
