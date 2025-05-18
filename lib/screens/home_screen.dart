import 'package:flutter/material.dart';
import 'package:web_qr/widgets/app_bar.dart';
import 'package:web_qr/widgets/custom_drawer.dart';
import 'package:web_qr/widgets/footer.dart';
import 'package:web_qr/widgets/hero_section.dart';
import 'package:web_qr/widgets/product_section.dart';
import 'package:web_qr/widgets/about_section.dart';
import 'package:web_qr/widgets/news_section.dart';
import 'package:web_qr/widgets/gallery_section.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ScrollController _scrollController = ScrollController();
  bool _showBackToTopButton = false;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      if (_scrollController.offset >= 400) {
        setState(() {
          _showBackToTopButton = true;
        });
      } else {
        setState(() {
          _showBackToTopButton = false;
        });
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollToTop() {
    _scrollController.animateTo(
      0,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      endDrawer: const CustomDrawer(),
      body: Stack(
        children: [
          SingleChildScrollView(
            controller: _scrollController,
            child: const Column(
              children: [
                HeroSection(),
                AboutSection(),
                ProductSection(),
                NewsSection(),
                GallerySection(),
                Footer(),
              ],
            ),
          ),
          if (_showBackToTopButton)
            Positioned(
              right: 20,
              bottom: 20,
              child: FloatingActionButton(
                onPressed: _scrollToTop,
                backgroundColor: Theme.of(context).colorScheme.primary,
                child: const Icon(
                  Icons.arrow_upward,
                  color: Colors.white,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
