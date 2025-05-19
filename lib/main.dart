import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:web_qr/screens/home_screen.dart';
import 'package:web_qr/screens/contact_screen.dart';
import 'package:web_qr/screens/products_screen.dart';
import 'package:web_qr/screens/about_screen.dart';
import 'package:web_qr/screens/news_screen.dart';
import 'package:web_qr/screens/activities_screen.dart';
import 'package:web_qr/providers/locale_provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setUrlStrategy(PathUrlStrategy());
  final prefs = await SharedPreferences.getInstance();
  runApp(MyApp(prefs: prefs));
}

class MyApp extends StatelessWidget {
  final SharedPreferences prefs;

  const MyApp({super.key, required this.prefs});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => LocaleProvider(prefs),
      child: Consumer<LocaleProvider>(
        builder: (context, localeProvider, _) {
          return MaterialApp(
            title: 'Gao Minh',
            debugShowCheckedModeBanner: false,
            locale: localeProvider.locale,
            supportedLocales: AppLocalizations.supportedLocales,
            localizationsDelegates: const [
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(
                seedColor: const Color(0xFF1E3A8A),
                primary: const Color(0xFF1E3A8A),
                secondary: const Color(0xFFEF4444),
              ),
              textTheme: GoogleFonts.robotoTextTheme(),
              useMaterial3: true,
            ),
            onGenerateRoute: (settings) {
              switch (settings.name) {
                case '/':
                  return MaterialPageRoute(builder: (_) => const HomeScreen());
                case '/products':
                  return MaterialPageRoute(
                      builder: (_) => const ProductsScreen());
                case '/about':
                  return MaterialPageRoute(builder: (_) => const AboutScreen());
                case '/news':
                  return MaterialPageRoute(builder: (_) => const NewsScreen());
                case '/activities':
                  return MaterialPageRoute(
                      builder: (_) => const ActivitiesScreen());
                case '/contact':
                  return MaterialPageRoute(
                      builder: (_) => const ContactScreen());
                default:
                  return MaterialPageRoute(builder: (_) => const HomeScreen());
              }
            },
            initialRoute: '/',
          );
        },
      ),
    );
  }
}
