import 'package:flutter/material.dart';

class ProductSection extends StatelessWidget {
  const ProductSection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final crossAxisCount = screenWidth > 1200
        ? 4
        : screenWidth > 800
            ? 3
            : screenWidth > 600
                ? 2
                : 1;

    final products = [
      {
        'name': 'Ván ép phủ phim',
        'image': 'assets/images/product1.jpg',
      },
      {
        'name': 'Ván ép chà dán',
        'image': 'assets/images/product2.jpg',
      },
      {
        'name': 'Ván ép bao bì',
        'image': 'assets/images/product3.jpg',
      },
      {
        'name': 'Ván ép LVL',
        'image': 'assets/images/product4.jpg',
      },
      {
        'name': 'Dịch vụ cắt CNC',
        'image': 'assets/images/product5.jpg',
      },
      {
        'name': 'Ván ép birch',
        'image': 'assets/images/product6.jpg',
      },
    ];

    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 80,
        horizontal: screenWidth > 600 ? 20 : 10,
      ),
      color: Colors.grey[100],
      child: Column(
        children: [
          Text(
            'SẢN PHẨM',
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.primary,
                ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 40),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: crossAxisCount,
              childAspectRatio: 1.2,
              crossAxisSpacing: screenWidth > 600 ? 20 : 10,
              mainAxisSpacing: screenWidth > 600 ? 20 : 10,
            ),
            itemCount: products.length,
            itemBuilder: (context, index) {
              return _buildProductCard(
                context,
                products[index]['name']!,
                products[index]['image']!,
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildProductCard(BuildContext context, String name, String image) {
    return Card(
      elevation: 4,
      child: InkWell(
        onTap: () {},
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.transparent,
                  Colors.black.withOpacity(0.7),
                ],
              ),
            ),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  name,
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
