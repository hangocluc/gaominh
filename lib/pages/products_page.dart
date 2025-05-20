import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProductsPage extends StatefulWidget {
  const ProductsPage({super.key});

  @override
  State<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  String _sortValue = 'default';
  String _selectedCategory = '';
  String _selectedSubcategory = '';

  final List<Map<String, dynamic>> _products = [
    {
      'name': 'Ván Ép Phủ Phim (Film Faced Plywood)',
      'image': 'assets/images/product1.png',
      'category': 'Construction Plywood',
      'description':
          'Kích thước: 1220x2440mm, Độ dày: 12-21mm, Chất lượng cao, Chống nước tốt',
    },
    {
      'name': 'Ván Ép Phủ Melamine (Melamine Plywood)',
      'image': 'assets/images/product2.png',
      'category': 'Decorative Plywood',
      'description': 'Độ dày: 2.5-30mm, Keo: E0/E1/E2, Chất lượng cao cấp',
    },
    {
      'name': 'Ván Ép Bao Bì (Packing Plywood)',
      'image': 'assets/images/product3.png',
      'category': 'Construction Plywood',
      'description':
          'Kích thước: 1220x2440mm, Độ dày: 5-18mm, Tiêu chuẩn xuất khẩu',
    },
    {
      'name': 'LVL - Laminated Veneer Lumber',
      'image': 'assets/images/product4.png',
      'category': 'Construction Plywood',
      'description': 'Độ dày: 12-90mm, Chiều rộng: 30-1220mm, Độ bền cao',
    },
    {
      'name': 'Dịch Vụ Cắt CNC (CNC Cutting Service)',
      'image': 'assets/images/image.png',
      'category': 'Cutting Plywood',
      'description': 'Cắt CNC theo yêu cầu, Độ chính xác cao, Giá cạnh tranh',
    },
    {
      'name': 'Ván Ép Cốt (Core Plywood)',
      'image': 'assets/images/image2.png',
      'category': 'Decorative Plywood',
      'description': 'Độ dày: 2.5-30mm, Keo: E0/E1/E2, Chất lượng ổn định',
    },
    {
      'name': 'Ván Ép Birch (Birch Plywood)',
      'image': 'assets/images/image3.png',
      'category': 'Decorative Plywood',
      'description': 'Mặt C/D/D+/E, Chất lượng cao, Phù hợp nội thất',
    },
    {
      'name': 'Ván Phủ Melamina (Melamine Board)',
      'image': 'assets/images/image4.png',
      'category': 'Decorative Plywood',
      'description': 'Độ dày: 2.5-30mm, Keo E0, Bề mặt đẹp',
    },
    {
      'name': 'Lam Sóng Gỗ (Wood Wave Panel)',
      'image': 'assets/images/image18.jpg',
      'category': 'Decorative Plywood',
      'description':
          'Kích thước: 2800-3000x120-195mm, Độ dày: 9-18mm, Chất liệu: Gỗ nhựa composite, Ứng dụng: Ốp tường, ốp trần trang trí',
    },
  ];

  final List<Map<String, dynamic>> _categories = [
    {
      'name': 'Construction Plywood',
      'icon': FontAwesomeIcons.building,
      'subcategories': [
        'Packing Plywood',
        'Film Faced Plywood',
        'LVL',
        'Plywood'
      ],
    },
    {
      'name': 'Decorative Plywood',
      'icon': FontAwesomeIcons.paintRoller,
      'subcategories': [
        'Commercial Plywood',
        'Birch Plywood',
        'Melamine Plywood',
        'Core Plywood',
        'Wave Panel'
      ],
    },
    {
      'name': 'Engineered Wood',
      'icon': FontAwesomeIcons.tree,
      'subcategories': ['Finger Joint Board', 'Sawn Acacia Wood', 'Chip Block'],
    },
    {
      'name': 'Cutting Plywood',
      'icon': FontAwesomeIcons.cut,
      'subcategories': [],
    }
  ];

  List<Map<String, dynamic>> get filteredProducts {
    return _products.where((product) {
      if (_selectedCategory.isEmpty) return true;
      if (_selectedSubcategory.isEmpty) {
        return product['category'] == _selectedCategory;
      }
      return product['category'] == _selectedCategory;
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenWidth < 800;

    return Container(
      color: Colors.grey[50],
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: 60,
          horizontal: screenWidth > 600 ? 20 : 10,
        ),
        constraints: const BoxConstraints(maxWidth: 1400),
        margin: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'SẢN PHẨM',
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.primary,
                  ),
            ),
            const SizedBox(height: 40),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (!isSmallScreen) ...[
                  SizedBox(
                    width: 280,
                    child: _buildCategoryMenu(),
                  ),
                  const SizedBox(width: 40),
                ],
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 16, horizontal: 20),
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
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Hiển thị ${filteredProducts.length} sản phẩm',
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                            _buildSortDropdown(),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      _buildProductGrid(context),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryMenu() {
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
            child: const Row(
              children: [
                Icon(FontAwesomeIcons.layerGroup,
                    color: Colors.white, size: 18),
                SizedBox(width: 12),
                Text(
                  'DANH MỤC SẢN PHẨM',
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
              return ExpansionTile(
                leading: Icon(
                  category['icon'] as IconData,
                  color: Theme.of(context).colorScheme.primary,
                  size: 18,
                ),
                title: Text(
                  category['name'],
                  style: TextStyle(
                    fontWeight: _selectedCategory == category['name']
                        ? FontWeight.bold
                        : FontWeight.normal,
                    color: _selectedCategory == category['name']
                        ? Theme.of(context).colorScheme.primary
                        : null,
                  ),
                ),
                children:
                    (category['subcategories'] as List<String>).map((subcat) {
                  return ListTile(
                    contentPadding: const EdgeInsets.only(left: 56),
                    title: Text(
                      subcat,
                      style: TextStyle(
                        fontSize: 14,
                        color: _selectedSubcategory == subcat
                            ? Theme.of(context).colorScheme.primary
                            : null,
                      ),
                    ),
                    onTap: () {
                      setState(() {
                        _selectedCategory = category['name'];
                        _selectedSubcategory = subcat;
                      });
                    },
                  );
                }).toList(),
                onExpansionChanged: (expanded) {
                  if (expanded) {
                    setState(() {
                      _selectedCategory = category['name'];
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

  Widget _buildSortDropdown() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey[300]!),
        borderRadius: BorderRadius.circular(4),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: _sortValue,
          icon: const Icon(Icons.keyboard_arrow_down),
          items: const [
            DropdownMenuItem(
              value: 'default',
              child: Text('Mặc định'),
            ),
            DropdownMenuItem(
              value: 'name_asc',
              child: Text('A → Z'),
            ),
            DropdownMenuItem(
              value: 'name_desc',
              child: Text('Z → A'),
            ),
          ],
          onChanged: (value) {
            if (value != null) {
              setState(() {
                _sortValue = value;
                // Implement sorting logic here
              });
            }
          },
        ),
      ),
    );
  }

  Widget _buildProductGrid(BuildContext context) {
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
        ? 0.7 // Tỷ lệ nhỏ hơn cho 4 cột
        : crossAxisCount == 2
            ? 0.8 // Tỷ lệ lớn hơn cho 2 cột
            : 0.75; // Tỷ lệ trung bình cho 3 cột

    // Điều chỉnh font size dựa trên số cột
    final titleFontSize = crossAxisCount == 4 ? 12.0 : 13.0;
    final descFontSize = crossAxisCount == 4 ? 10.0 : 11.0;
    final buttonFontSize = crossAxisCount == 4 ? 9.0 : 10.0;
    final iconSize = crossAxisCount == 4 ? 10.0 : 11.0;

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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              AspectRatio(
                aspectRatio:
                    crossAxisCount == 4 ? 1.0 : 1.1, // Điều chỉnh tỷ lệ ảnh
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
                  padding: EdgeInsets.fromLTRB(
                    10,
                    8,
                    10,
                    crossAxisCount == 4
                        ? 8
                        : 10, // Giảm padding bottom cho 4 cột
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        product['name'],
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: titleFontSize,
                          height: 1.2,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(height: crossAxisCount == 4 ? 3 : 4),
                      Expanded(
                        child: Text(
                          product['description'],
                          style: TextStyle(
                            fontSize: descFontSize,
                            color: Colors.grey[600],
                            height: 1.2,
                          ),
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      SizedBox(height: crossAxisCount == 4 ? 4 : 6),
                      SizedBox(
                        height: crossAxisCount == 4
                            ? 28
                            : 30, // Giảm chiều cao nút cho 4 cột
                        child: ElevatedButton.icon(
                          onPressed: () {},
                          icon: Icon(FontAwesomeIcons.phone, size: iconSize),
                          label: Text(
                            'LIÊN HỆ',
                            style: TextStyle(fontSize: buttonFontSize),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                Theme.of(context).colorScheme.primary,
                            foregroundColor: Colors.white,
                            padding: EdgeInsets.zero,
                            minimumSize: Size(
                                double.infinity, crossAxisCount == 4 ? 28 : 30),
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
        );
      },
    );
  }
}
