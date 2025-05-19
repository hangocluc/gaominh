import 'package:flutter/material.dart';
import 'package:web_qr/widgets/app_bar.dart';
import 'package:web_qr/widgets/custom_drawer.dart';
import 'package:web_qr/widgets/footer.dart';
import 'package:web_qr/widgets/news_section.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(),
      endDrawer: CustomDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            NewsSection(),
            Footer(),
          ],
        ),
      ),
    );
  }
}
