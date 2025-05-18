import 'package:flutter/material.dart';
import 'app_en.dart';
import 'app_vi.dart';
import 'app_zh.dart';

class AppLocalizations {
  final Locale locale;

  AppLocalizations(this.locale);

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const Map<String, Map<String, String>> _localizedValues = {
    'en': AppLocaleEn.values,
    'vi': AppLocaleVi.values,
    'zh': AppLocaleZh.values,
  };

  String get currentLanguage => locale.languageCode;

  String translate(String key) {
    return _localizedValues[locale.languageCode]?[key] ?? key;
  }

  static const List<Locale> supportedLocales = [
    Locale('en', ''),
    Locale('vi', ''),
    Locale('zh', ''),
  ];
}

class AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    return ['en', 'vi', 'zh'].contains(locale.languageCode);
  }

  @override
  Future<AppLocalizations> load(Locale locale) async {
    return AppLocalizations(locale);
  }

  @override
  bool shouldReload(AppLocalizationsDelegate old) => false;
}
