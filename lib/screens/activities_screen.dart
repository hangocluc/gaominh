import 'package:flutter/material.dart';
import 'package:web_qr/widgets/app_bar.dart';
import 'package:web_qr/widgets/custom_drawer.dart';
import 'package:web_qr/widgets/footer.dart';
import 'package:web_qr/widgets/activity_section.dart';

class ActivitiesScreen extends StatelessWidget {
  const ActivitiesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      endDrawer: const CustomDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ActivitySection(),
            const Footer(),
          ],
        ),
      ),
    );
  }
}
