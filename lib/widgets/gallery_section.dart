import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class GallerySection extends StatelessWidget {
  const GallerySection({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final screenWidth = MediaQuery.of(context).size.width;
    final crossAxisCount = screenWidth > 1200
        ? 4
        : screenWidth > 800
            ? 3
            : screenWidth > 600
                ? 2
                : 1;

    final images = [
      'assets/images/image.png',
      'assets/images/image2.png',
      'assets/images/image3.png',
      'assets/images/image4.png',
      'assets/images/image5.jpg',
      'assets/images/image6.jpg',
      'assets/images/image7.jpg',
      'assets/images/image8.jpg',
      'assets/images/image9.jpg',
      'assets/images/image10.jpg',
      'assets/images/image11.jpg',
      'assets/images/image12.jpg',
      'assets/images/image13.jpg',
      'assets/images/image14.jpg',
      'assets/images/image15.jpg',
      'assets/images/image16.jpg',
      'assets/images/image17.jpg',
      'assets/images/image18.jpg',
    ];

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 20),
      color: Colors.grey[100],
      child: Column(
        children: [
          Text(
            l10n.gallery_title,
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.primary,
                ),
          ),
          const SizedBox(height: 40),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: crossAxisCount,
              childAspectRatio: 1.0,
              crossAxisSpacing: screenWidth > 600 ? 10 : 5,
              mainAxisSpacing: screenWidth > 600 ? 10 : 5,
            ),
            itemCount: images.length,
            itemBuilder: (context, index) {
              return _GalleryItem(image: images[index]);
            },
          ),
        ],
      ),
    );
  }
}

class _GalleryItem extends StatelessWidget {
  final String image;

  const _GalleryItem({required this.image});

  void _showFullScreenImage(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => Dialog(
        backgroundColor: Colors.transparent,
        child: Stack(
          children: [
            InteractiveViewer(
              child: Image.asset(
                image,
                fit: BoxFit.contain,
              ),
            ),
            Positioned(
              top: 16,
              right: 16,
              child: IconButton(
                icon: const Icon(Icons.close, color: Colors.white, size: 32),
                onPressed: () => Navigator.of(context).pop(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: InkWell(
        onTap: () => _showFullScreenImage(context),
        borderRadius: BorderRadius.circular(8),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
