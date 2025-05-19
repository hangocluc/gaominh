import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final isSmallScreen = screenWidth < 600;

    final List<String> imgList = [
      'assets/images/banner5.jpeg',
      'assets/images/banner3.png',
      'assets/images/banner6.jpg',
    ];

    return SizedBox(
      height: isSmallScreen ? screenHeight * 0.4 : screenHeight * 0.5,
      child: FlutterCarousel(
        options: CarouselOptions(
          height: isSmallScreen ? screenHeight * 0.4 : screenHeight * 0.5,
          viewportFraction: 1.0,
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 5),
          showIndicator: false,
        ),
        items: imgList
            .map((item) =>
                _buildCarouselItem(context, item, l10n, isSmallScreen))
            .toList(),
      ),
    );
  }

  Widget _buildCarouselItem(BuildContext context, String imageUrl,
      AppLocalizations l10n, bool isSmallScreen) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imageUrl),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.black.withOpacity(0.6),
              Colors.black.withOpacity(0.3),
            ],
          ),
        ),
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: isSmallScreen ? 20 : 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  l10n.hero_title,
                  style: Theme.of(context).textTheme.displayLarge?.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: isSmallScreen ? 32 : null,
                      ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: isSmallScreen ? 10 : 20),
                Text(
                  l10n.hero_subtitle,
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                        color: Colors.white,
                        fontSize: isSmallScreen ? 16 : null,
                      ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: isSmallScreen ? 20 : 40),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).colorScheme.secondary,
                    padding: EdgeInsets.symmetric(
                      horizontal: isSmallScreen ? 20 : 40,
                      vertical: isSmallScreen ? 12 : 20,
                    ),
                  ),
                  child: Text(
                    l10n.explore_now,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: isSmallScreen ? 14 : null,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
