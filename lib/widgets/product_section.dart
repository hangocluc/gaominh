import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Product {
  final String name;
  final String image;
  final String description;
  final List<String> features;
  final Map<String, String> specifications;
  final List<String> highlights;

  const Product({
    required this.name,
    required this.image,
    required this.description,
    this.features = const [],
    this.specifications = const {},
    this.highlights = const [],
  });
}

class ProductSection extends StatelessWidget {
  final bool isDetailedVersion;

  const ProductSection({
    super.key,
    this.isDetailedVersion = false,
  });

  List<Product> getProducts(AppLocalizations l10n) => [
        Product(
          name: l10n.product1_name,
          image: 'assets/images/product1.png',
          description: l10n.product1_description,
          specifications: {
            l10n.product1_spec_surface: l10n.product1_spec_surface_value,
            l10n.product1_spec_core: l10n.product1_spec_core_value,
            l10n.product1_spec_center: l10n.product1_spec_center_value,
            l10n.product1_spec_glue: l10n.product1_spec_glue_value,
            l10n.product1_spec_size: l10n.product1_spec_size_value,
            l10n.product1_spec_thickness: l10n.product1_spec_thickness_value,
            l10n.product1_spec_application:
                l10n.product1_spec_application_value,
          },
          highlights: [
            l10n.product1_highlight1,
            l10n.product1_highlight2,
            l10n.product1_highlight3,
            l10n.product1_highlight4,
            l10n.product1_highlight5,
          ],
        ),
        Product(
          name: l10n.product2_name,
          image: 'assets/images/product2.png',
          description: l10n.product2_description,
          specifications: {
            l10n.product2_spec_surface: l10n.product2_spec_surface_value,
            l10n.product2_spec_core: l10n.product2_spec_core_value,
            l10n.product2_spec_size: l10n.product2_spec_size_value,
            l10n.product2_spec_thickness: l10n.product2_spec_thickness_value,
            l10n.product2_spec_glue: l10n.product2_spec_glue_value,
            l10n.product2_spec_application:
                l10n.product2_spec_application_value,
          },
          highlights: [
            l10n.product2_highlight1,
            l10n.product2_highlight2,
            l10n.product2_highlight3,
            l10n.product2_highlight4,
            l10n.product2_highlight5,
          ],
        ),
        Product(
          name: l10n.product3_name,
          image: 'assets/images/product3.png',
          description: l10n.product3_description,
          specifications: {
            l10n.product3_spec_core: l10n.product3_spec_core_value,
            l10n.product3_spec_surface: l10n.product3_spec_surface_value,
            l10n.product3_spec_features: l10n.product3_spec_features_value,
            l10n.product3_spec_size: l10n.product3_spec_size_value,
            l10n.product3_spec_thickness: l10n.product3_spec_thickness_value,
            l10n.product3_spec_tolerance: l10n.product3_spec_tolerance_value,
            l10n.product3_spec_glue: l10n.product3_spec_glue_value,
            l10n.product3_spec_application:
                l10n.product3_spec_application_value,
          },
        ),
        Product(
          name: l10n.product4_name,
          image: 'assets/images/product4.png',
          description: l10n.product4_description,
          specifications: {
            l10n.product4_spec_core: l10n.product4_spec_core_value,
            l10n.product4_spec_surface: l10n.product4_spec_surface_value,
            l10n.product4_spec_features: l10n.product4_spec_features_value,
            l10n.product4_spec_size: l10n.product4_spec_size_value,
            l10n.product4_spec_thickness: l10n.product4_spec_thickness_value,
            l10n.product4_spec_tolerance: l10n.product4_spec_tolerance_value,
            l10n.product4_spec_glue: l10n.product4_spec_glue_value,
            l10n.product4_spec_application:
                l10n.product4_spec_application_value,
          },
        ),
        Product(
          name: l10n.product5_name,
          image: 'assets/images/image4.png',
          description: l10n.product5_description,
          specifications: {
            l10n.product5_spec_core: l10n.product5_spec_core_value,
            l10n.product5_spec_surface: l10n.product5_spec_surface_value,
            l10n.product5_spec_features: l10n.product5_spec_features_value,
            l10n.product5_spec_size: l10n.product5_spec_size_value,
            l10n.product5_spec_thickness: l10n.product5_spec_thickness_value,
            l10n.product5_spec_tolerance: l10n.product5_spec_tolerance_value,
            l10n.product5_spec_glue: l10n.product5_spec_glue_value,
            l10n.product5_spec_application:
                l10n.product5_spec_application_value,
          },
        ),
        Product(
          name: l10n.product6_name,
          image: 'assets/images/image.png',
          description: l10n.product6_description,
          specifications: {
            l10n.product6_spec_surface: l10n.product6_spec_surface_value,
            l10n.product6_spec_size: l10n.product6_spec_size_value,
            l10n.product6_spec_thickness: l10n.product6_spec_thickness_value,
            l10n.product6_spec_glue: l10n.product6_spec_glue_value,
            l10n.product6_spec_application:
                l10n.product6_spec_application_value,
          },
        ),
        Product(
          name: l10n.product7_name,
          image: 'assets/images/image3.png',
          description: l10n.product7_description,
          specifications: {
            l10n.product7_spec_surface: l10n.product7_spec_surface_value,
            l10n.product7_spec_core: l10n.product7_spec_core_value,
            l10n.product7_spec_center: l10n.product7_spec_center_value,
            l10n.product7_spec_glue: l10n.product7_spec_glue_value,
            l10n.product7_spec_size: l10n.product7_spec_size_value,
            l10n.product7_spec_thickness: l10n.product7_spec_thickness_value,
            l10n.product7_spec_application:
                l10n.product7_spec_application_value,
          },
        ),
        Product(
          name: l10n.product8_name,
          image: 'assets/images/product5.png',
          description: l10n.product8_description,
          specifications: {
            l10n.product8_spec_hpl_thickness:
                l10n.product8_spec_hpl_thickness_value,
            l10n.product8_spec_surface: l10n.product8_spec_surface_value,
            l10n.product8_spec_colors: l10n.product8_spec_colors_value,
            l10n.product8_spec_core: l10n.product8_spec_core_value,
            l10n.product8_spec_size: l10n.product8_spec_size_value,
            l10n.product8_spec_thickness: l10n.product8_spec_thickness_value,
            l10n.product8_spec_glue: l10n.product8_spec_glue_value,
            l10n.product8_spec_application:
                l10n.product8_spec_application_value,
          },
          highlights: [
            l10n.product8_highlight1,
            l10n.product8_highlight2,
            l10n.product8_highlight3,
            l10n.product8_highlight4,
            l10n.product8_highlight5,
          ],
        ),
      ];

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    if (l10n == null) return const SizedBox.shrink();
    final products = getProducts(l10n);
    final screenWidth = MediaQuery.of(context).size.width;
    final crossAxisCount = screenWidth > 1200
        ? 4
        : screenWidth > 800
            ? 3
            : screenWidth > 600
                ? 2
                : 1;

    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 80,
        horizontal: screenWidth > 600 ? 20 : 10,
      ),
      child: Column(
        children: [
          Text(
            l10n.products_title,
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.primary,
                ),
          ),
          const SizedBox(height: 40),
          if (isDetailedVersion)
            _buildDetailedProductList(context, products, l10n)
          else
            _buildSimpleProductGrid(context, crossAxisCount, products, l10n),
        ],
      ),
    );
  }

  Widget _buildSimpleProductGrid(BuildContext context, int crossAxisCount,
      List<Product> products, AppLocalizations l10n) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenWidth < 600;
    final itemWidth = screenWidth / crossAxisCount;
    final imageHeight = itemWidth * (isSmallScreen ? 0.6 : 0.75);

    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        childAspectRatio: isSmallScreen ? 0.7 : 0.75,
        crossAxisSpacing: screenWidth > 600 ? 20 : 10,
        mainAxisSpacing: screenWidth > 600 ? 20 : 10,
      ),
      itemCount: products.length,
      itemBuilder: (context, index) {
        final product = products[index];
        return Card(
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
                  product.image,
                  height: imageHeight,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(isSmallScreen ? 8 : 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.name,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: isSmallScreen ? 14 : null,
                          ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: isSmallScreen ? 4 : 8),
                    Text(
                      product.description,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            fontSize: isSmallScreen ? 12 : null,
                          ),
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildDetailedProductList(
      BuildContext context, List<Product> products, AppLocalizations l10n) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenWidth < 600;
    final crossAxisCount = screenWidth > 1200
        ? 3
        : screenWidth > 800
            ? 2
            : 1;
    final itemWidth = screenWidth / crossAxisCount;
    final imageHeight = itemWidth * (isSmallScreen ? 0.5 : 0.6);

    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        childAspectRatio: isSmallScreen ? 0.5 : 0.6,
        crossAxisSpacing: screenWidth > 600 ? 20 : 10,
        mainAxisSpacing: screenWidth > 600 ? 20 : 10,
      ),
      itemCount: products.length,
      itemBuilder: (context, index) {
        final product = products[index];
        return Card(
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius:
                      const BorderRadius.vertical(top: Radius.circular(8)),
                  child: Image.asset(
                    product.image,
                    height: imageHeight,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(isSmallScreen ? 8 : 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        product.name,
                        style:
                            Theme.of(context).textTheme.titleMedium?.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Theme.of(context).colorScheme.primary,
                                  fontSize: isSmallScreen ? 14 : null,
                                ),
                      ),
                      SizedBox(height: isSmallScreen ? 4 : 8),
                      Text(
                        product.description,
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              fontSize: isSmallScreen ? 12 : null,
                            ),
                      ),
                      if (product.specifications.isNotEmpty) ...[
                        const SizedBox(height: 16),
                        Text(
                          l10n.product_specifications,
                          style:
                              Theme.of(context).textTheme.titleMedium?.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                        const SizedBox(height: 8),
                        ...product.specifications.entries.map(
                          (spec) => Padding(
                            padding: const EdgeInsets.only(bottom: 8),
                            child: RichText(
                              text: TextSpan(
                                style: Theme.of(context).textTheme.bodyMedium,
                                children: [
                                  TextSpan(
                                    text: '${spec.key}: ',
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(text: spec.value),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                      if (product.highlights.isNotEmpty) ...[
                        const SizedBox(height: 16),
                        Text(
                          l10n.product_highlights,
                          style:
                              Theme.of(context).textTheme.titleMedium?.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                        const SizedBox(height: 8),
                        ...product.highlights.map(
                          (highlight) => Padding(
                            padding: const EdgeInsets.only(bottom: 8),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Icon(Icons.check_circle,
                                    color: Colors.green, size: 20),
                                const SizedBox(width: 8),
                                Expanded(
                                  child: Text(
                                    highlight,
                                    style:
                                        Theme.of(context).textTheme.bodyMedium,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
