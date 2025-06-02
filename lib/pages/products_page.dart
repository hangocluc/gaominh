import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../pages/product_details_page.dart';
import 'package:web_qr/widgets/app_bar.dart';
import 'package:web_qr/widgets/custom_drawer.dart';
import 'package:web_qr/widgets/footer.dart';

class ProductsPage extends StatefulWidget {
  const ProductsPage({super.key});

  @override
  State<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  String _sortValue = 'Mới nhất';
  String _selectedCategory = '';
  String _selectedSubcategory = '';

  final List<Map<String, dynamic>> _products = [
    {
      'nameKey': 'product1_name',
      'descriptionKey': 'product1_description',
      'image': 'assets/images/product1.png',
      'categoryKey': 'construction_plywood',
    },
    {
      'nameKey': 'product2_name',
      'descriptionKey': 'product2_description',
      'image': 'assets/images/product2.png',
      'categoryKey': 'decorative_plywood',
    },
    {
      'nameKey': 'product3_name',
      'descriptionKey': 'product3_description',
      'image': 'assets/images/product3.png',
      'categoryKey': 'construction_plywood',
    },
    {
      'nameKey': 'product4_name',
      'descriptionKey': 'product4_description',
      'image': 'assets/images/product4.png',
      'categoryKey': 'construction_plywood',
    },
    {
      'nameKey': 'product5_name',
      'descriptionKey': 'product5_description',
      'image': 'assets/images/image.png',
      'categoryKey': 'cutting_plywood',
    },
    {
      'nameKey': 'product6_name',
      'descriptionKey': 'product6_description',
      'image': 'assets/images/image2.png',
      'categoryKey': 'decorative_plywood',
    },
    {
      'nameKey': 'product7_name',
      'descriptionKey': 'product7_description',
      'image': 'assets/images/image3.png',
      'categoryKey': 'decorative_plywood',
    },
    {
      'nameKey': 'product8_name',
      'descriptionKey': 'product8_description',
      'image': 'assets/images/image4.png',
      'categoryKey': 'decorative_plywood',
    },
    {
      'nameKey': 'product9_name',
      'descriptionKey': 'product9_description',
      'image': 'assets/images/image18.jpg',
      'categoryKey': 'decorative_plywood',
    },
  ];

  final List<Map<String, dynamic>> _categories = [
    {
      'nameKey': 'construction_plywood',
      'icon': FontAwesomeIcons.building,
      'subcategories': [
        'packing_plywood',
        'film_faced_plywood',
        'lvl',
        'plywood'
      ],
    },
    {
      'nameKey': 'decorative_plywood',
      'icon': FontAwesomeIcons.paintRoller,
      'subcategories': [
        'commercial_plywood',
        'birch_plywood',
        'melamine_plywood',
        'core_plywood',
        'wave_panel'
      ],
    },
    {
      'nameKey': 'engineered_wood',
      'icon': FontAwesomeIcons.tree,
      'subcategories': ['finger_joint_board', 'sawn_acacia_wood', 'chip_block'],
    },
    {
      'nameKey': 'cutting_plywood',
      'icon': FontAwesomeIcons.cut,
      'subcategories': [],
    }
  ];

  List<Map<String, dynamic>> get filteredProducts {
    final l10n = AppLocalizations.of(context)!;
    return _products.where((product) {
      if (_selectedCategory.isEmpty) return true;
      String categoryName;
      switch (product['categoryKey']) {
        case 'construction_plywood':
          categoryName = l10n.construction_plywood;
          break;
        case 'decorative_plywood':
          categoryName = l10n.decorative_plywood;
          break;
        case 'engineered_wood':
          categoryName = l10n.engineered_wood;
          break;
        case 'cutting_plywood':
          categoryName = l10n.cutting_plywood;
          break;
        default:
          categoryName = product['categoryKey'];
      }
      if (_selectedSubcategory.isEmpty) {
        return categoryName == _selectedCategory;
      }
      return categoryName == _selectedCategory;
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      endDrawer: const CustomDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  _buildCategoryMenu(),
                  const SizedBox(height: 20),
                  _buildProductGrid(),
                ],
              ),
            ),
            const Footer(),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryMenu() {
    final l10n = AppLocalizations.of(context)!;
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(8)),
            ),
            child: Row(
              children: [
                Icon(FontAwesomeIcons.layerGroup,
                    color: Colors.white, size: 18),
                SizedBox(width: 12),
                Text(
                  l10n.category_title,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: _categories.length,
            itemBuilder: (context, index) {
              final category = _categories[index];
              String categoryName;
              switch (category['nameKey']) {
                case 'construction_plywood':
                  categoryName = l10n.construction_plywood;
                  break;
                case 'decorative_plywood':
                  categoryName = l10n.decorative_plywood;
                  break;
                case 'engineered_wood':
                  categoryName = l10n.engineered_wood;
                  break;
                case 'cutting_plywood':
                  categoryName = l10n.cutting_plywood;
                  break;
                default:
                  categoryName = category['nameKey'];
              }
              return ExpansionTile(
                leading: Icon(
                  category['icon'] as IconData,
                  color: Theme.of(context).colorScheme.primary,
                  size: 18,
                ),
                title: Text(
                  categoryName,
                  style: TextStyle(
                    fontWeight: _selectedCategory == categoryName
                        ? FontWeight.bold
                        : FontWeight.normal,
                    color: _selectedCategory == categoryName
                        ? Theme.of(context).colorScheme.primary
                        : null,
                  ),
                ),
                children: (List<String>.from(category['subcategories']))
                    .map((subcat) {
                  String subcatName;
                  switch (subcat) {
                    case 'packing_plywood':
                      subcatName = l10n.packing_plywood;
                      break;
                    case 'film_faced_plywood':
                      subcatName = l10n.film_faced_plywood;
                      break;
                    case 'lvl':
                      subcatName = l10n.lvl;
                      break;
                    case 'plywood':
                      subcatName = l10n.plywood;
                      break;
                    case 'commercial_plywood':
                      subcatName = l10n.commercial_plywood;
                      break;
                    case 'birch_plywood':
                      subcatName = l10n.birch_plywood;
                      break;
                    case 'melamine_plywood':
                      subcatName = l10n.melamine_plywood;
                      break;
                    case 'core_plywood':
                      subcatName = l10n.core_plywood;
                      break;
                    case 'wave_panel':
                      subcatName = l10n.wave_panel;
                      break;
                    case 'finger_joint_board':
                      subcatName = l10n.finger_joint_board;
                      break;
                    case 'sawn_acacia_wood':
                      subcatName = l10n.sawn_acacia_wood;
                      break;
                    case 'chip_block':
                      subcatName = l10n.chip_block;
                      break;
                    default:
                      subcatName = subcat;
                  }
                  return ListTile(
                    contentPadding: const EdgeInsets.only(left: 56),
                    title: Text(
                      subcatName,
                      style: TextStyle(
                        fontSize: 14,
                        color: _selectedSubcategory == subcatName
                            ? Theme.of(context).colorScheme.primary
                            : null,
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        _selectedCategory = categoryName;
                        _selectedSubcategory = subcatName;
                      });
                    },
                  );
                }).toList(),
                onExpansionChanged: (expanded) {
                  if (expanded) {
                    setState(() {
                      _selectedCategory = categoryName;
                      _selectedSubcategory = '';
                    });
                  }
                },
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildProductGrid() {
    final screenWidth = MediaQuery.of(context).size.width;
    final crossAxisCount = screenWidth > 1200
        ? 4
        : screenWidth > 900
            ? 3
            : screenWidth > 600
                ? 2
                : 1;

    // Điều chỉnh tỷ lệ dựa trên số cột
    final childAspectRatio = crossAxisCount == 4
        ? 0.7 // Giảm tỷ lệ để tăng chiều cao
        : crossAxisCount == 2
            ? 0.75 // Giảm tỷ lệ để tăng chiều cao
            : 0.8; // Giảm tỷ lệ để tăng chiều cao

    // Điều chỉnh font size dựa trên số cột
    final titleFontSize = crossAxisCount == 4 ? 14.0 : 15.0;
    final descFontSize = crossAxisCount == 4 ? 12.0 : 13.0;
    final buttonFontSize = crossAxisCount == 4 ? 11.0 : 12.0;
    final iconSize = crossAxisCount == 4 ? 12.0 : 13.0;

    final l10n = AppLocalizations.of(context)!;
    final Map<String, String> productTexts = {
      'product1_name': l10n.product1_name,
      'product1_description': l10n.product1_description,
      'product2_name': l10n.product2_name,
      'product2_description': l10n.product2_description,
      'product3_name': l10n.product3_name,
      'product3_description': l10n.product3_description,
      'product4_name': l10n.product4_name,
      'product4_description': l10n.product4_description,
      'product5_name': l10n.product5_name,
      'product5_description': l10n.product5_description,
      'product6_name': l10n.product6_name,
      'product6_description': l10n.product6_description,
      'product7_name': l10n.product7_name,
      'product7_description': l10n.product7_description,
      'product8_name': l10n.product8_name,
      'product8_description': l10n.product8_description,
      'product9_name': l10n.product9_name,
      'product9_description': l10n.product9_description,
    };

    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        childAspectRatio: childAspectRatio,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
      itemCount: filteredProducts.length,
      itemBuilder: (context, index) {
        final product = filteredProducts[index];
        return Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                spreadRadius: 1,
                blurRadius: 5,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductDetailsPage(
                    product: {
                      'name': productTexts[product['nameKey']] ?? '',
                      'description':
                          productTexts[product['descriptionKey']] ?? '',
                      'image': product['image'],
                      'category': product['categoryKey'],
                    },
                  ),
                ),
              );
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                AspectRatio(
                  aspectRatio: 1.2,
                  child: ClipRRect(
                    borderRadius:
                        const BorderRadius.vertical(top: Radius.circular(8)),
                    child: Image.asset(
                      product['image'],
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: double.infinity,
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              productTexts[product['nameKey']] ?? '',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: titleFontSize,
                                height: 1.2,
                              ),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                            const SizedBox(height: 6),
                            Text(
                              productTexts[product['descriptionKey']] ?? '',
                              style: TextStyle(
                                fontSize: descFontSize,
                                color: Colors.grey[600],
                                height: 1.2,
                              ),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                        const SizedBox(height: 12),
                        SizedBox(
                          height: 36,
                          child: ElevatedButton.icon(
                            onPressed: () {
                              Navigator.pushNamed(context, '/contact');
                            },
                            icon: Icon(FontAwesomeIcons.phone, size: iconSize),
                            label: Text(
                              AppLocalizations.of(context)!.contact,
                              style: TextStyle(fontSize: buttonFontSize),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  Theme.of(context).colorScheme.primary,
                              foregroundColor: Colors.white,
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 12),
                              minimumSize: const Size(double.infinity, 36),
                              textStyle: const TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
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
