import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocaleProvider extends ChangeNotifier {
  Locale _locale = const Locale('vi');
  final SharedPreferences _prefs;
  static const supportedLocales = ['en', 'vi', 'zh'];

  LocaleProvider(this._prefs) {
    _loadSavedLocale();
  }

  Locale get locale => _locale;

  void _loadSavedLocale() {
    final savedLocale = _prefs.getString('locale');
    if (savedLocale != null && supportedLocales.contains(savedLocale)) {
      _locale = Locale(savedLocale);
      notifyListeners();
    }
  }

  Future<void> setLocale(Locale locale) async {
    if (!supportedLocales.contains(locale.languageCode)) return;

    _locale = locale;
    await _prefs.setString('locale', locale.languageCode);
    notifyListeners();
  }

  void toggleLocale() {
    final currentIndex = supportedLocales.indexOf(_locale.languageCode);
    final nextIndex = (currentIndex + 1) % supportedLocales.length;
    setLocale(Locale(supportedLocales[nextIndex]));
  }
}
