import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:web_qr/providers/locale_provider.dart';

class LanguageSwitcher extends StatelessWidget {
  const LanguageSwitcher({super.key});

  @override
  Widget build(BuildContext context) {
    final localeProvider = Provider.of<LocaleProvider>(context);
    final currentLanguage = localeProvider.locale.languageCode;

    return PopupMenuButton<String>(
      icon: const Icon(Icons.language, color: Colors.white),
      itemBuilder: (context) => [
        _buildPopupMenuItem('vi', 'VI', currentLanguage),
        _buildPopupMenuItem('en', 'EN', currentLanguage),
        _buildPopupMenuItem('zh', '中文', currentLanguage),
      ],
      onSelected: (String languageCode) {
        localeProvider.setLocale(Locale(languageCode));
      },
    );
  }

  PopupMenuItem<String> _buildPopupMenuItem(
      String languageCode, String label, String currentLanguage) {
    return PopupMenuItem<String>(
      value: languageCode,
      child: Row(
        children: [
          if (languageCode == currentLanguage)
            const Icon(Icons.check, size: 20)
          else
            const SizedBox(width: 20),
          const SizedBox(width: 8),
          Text(label),
        ],
      ),
    );
  }
}
