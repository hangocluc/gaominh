import 'package:flutter/material.dart';

class GallerySection extends StatelessWidget {
  const GallerySection({super.key});

  @override
  Widget build(BuildContext context) {
    final images = [
      'assets/images/image.png',
      'assets/images/image2.png',
      'assets/images/image3.png',
      'assets/images/image4.png',
    ];

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 20),
      color: Colors.grey[100],
      child: Column(
        children: [
          Text(
            'THƯ VIỆN ẢNH',
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.primary,
                ),
          ),
          const SizedBox(height: 40),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              childAspectRatio: 1.0,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            itemCount: images.length,
            itemBuilder: (context, index) {
              return _buildGalleryItem(context, images[index]);
            },
          ),
        ],
      ),
    );
  }

  Widget _buildGalleryItem(BuildContext context, String image) {
    return Card(
      elevation: 4,
      child: InkWell(
        onTap: () {
          // Show full-screen image view
          showDialog(
            context: context,
            builder: (context) => Dialog(
              child: Image.asset(
                image,
                fit: BoxFit.contain,
              ),
            ),
          );
        },
        child: Container(
          decoration: BoxDecoration(
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
