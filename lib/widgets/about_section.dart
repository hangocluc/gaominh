import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AboutSection extends StatelessWidget {
  final bool isDetailedVersion;

  const AboutSection({
    super.key,
    this.isDetailedVersion = false,
  });

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenWidth < 800;
    final statistics = [
      {'number': '10+', 'label': l10n.about_statistic1_label},
      {'number': '25+', 'label': l10n.about_statistic2_label},
      {'number': '500+', 'label': l10n.about_statistic3_label},
      {'number': '300+', 'label': l10n.about_statistic4_label},
    ];

    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 80,
        horizontal: screenWidth > 600 ? 20 : 10,
      ),
      child: Column(
        children: [
          Text(
            l10n.about_title,
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.primary,
                ),
          ),
          const SizedBox(height: 40),
          Container(
            constraints: const BoxConstraints(maxWidth: 800),
            child: isDetailedVersion
                ? _buildDetailedContent(context)
                : _buildSimpleContent(context),
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

  Widget _buildSimpleContent(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Text(
      l10n.about_simple_content,
      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
            height: 1.8,
          ),
      textAlign: TextAlign.center,
    );
  }

  Widget _buildDetailedContent(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          l10n.about_detailed_greeting,
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
                height: 1.8,
              ),
          textAlign: TextAlign.justify,
        ),
        const SizedBox(height: 20),
        Text(
          l10n.about_detailed_intro,
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                height: 1.8,
              ),
          textAlign: TextAlign.justify,
        ),
        const SizedBox(height: 20),
        Text(
          l10n.about_detailed_experience,
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                height: 1.8,
              ),
          textAlign: TextAlign.justify,
        ),
        const SizedBox(height: 20),
        Text(
          l10n.about_detailed_commitment,
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                height: 1.8,
              ),
          textAlign: TextAlign.justify,
        ),
        const SizedBox(height: 40),
        Text(
          l10n.about_why_choose_us,
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.primary,
              ),
        ),
        const SizedBox(height: 20),
        Text(
          l10n.about_motto,
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
        const SizedBox(height: 10),
        Text(
          l10n.about_motto_text,
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontStyle: FontStyle.italic,
                color: Theme.of(context).colorScheme.primary,
              ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 20),
        Text(
          l10n.about_commitments,
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
        const SizedBox(height: 10),
        ...[
          l10n.about_commitment1,
          l10n.about_commitment2,
          l10n.about_commitment3,
          l10n.about_commitment4,
          l10n.about_commitment5,
          l10n.about_commitment6,
          l10n.about_commitment7,
        ].map((text) => Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 8),
                    child:
                        Icon(Icons.check_circle, size: 16, color: Colors.green),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      text,
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            height: 1.6,
                          ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ],
              ),
            )),
        const SizedBox(height: 40),
        Text(
          l10n.about_certificates,
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.primary,
              ),
        ),
        const SizedBox(height: 20),
        Text(
          l10n.about_certificates_intro,
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                height: 1.8,
              ),
          textAlign: TextAlign.justify,
        ),
        const SizedBox(height: 20),
        Text(
          l10n.about_certificates_list,
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
        const SizedBox(height: 10),
        ...[
          l10n.about_certificate1,
          l10n.about_certificate2,
          l10n.about_certificate3,
          l10n.about_certificate4,
        ].map((text) => Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 8),
                    child: Icon(Icons.verified, size: 16, color: Colors.blue),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      text,
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            height: 1.6,
                          ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ],
              ),
            )),
      ],
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
