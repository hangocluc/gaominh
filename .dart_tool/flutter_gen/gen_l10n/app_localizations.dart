import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_vi.dart';
import 'app_localizations_zh.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'gen_l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('vi'),
    Locale('zh')
  ];

  /// No description provided for @home.
  ///
  /// In en, this message translates to:
  /// **'HOME'**
  String get home;

  /// No description provided for @products.
  ///
  /// In en, this message translates to:
  /// **'PRODUCTS'**
  String get products;

  /// No description provided for @about.
  ///
  /// In en, this message translates to:
  /// **'ABOUT'**
  String get about;

  /// No description provided for @news.
  ///
  /// In en, this message translates to:
  /// **'NEWS'**
  String get news;

  /// No description provided for @activities.
  ///
  /// In en, this message translates to:
  /// **'ACTIVITIES'**
  String get activities;

  /// No description provided for @contact.
  ///
  /// In en, this message translates to:
  /// **'CONTACT'**
  String get contact;

  /// No description provided for @hero_title.
  ///
  /// In en, this message translates to:
  /// **'GAOMINH'**
  String get hero_title;

  /// No description provided for @hero_subtitle.
  ///
  /// In en, this message translates to:
  /// **'Trusted supplier of plywood and wood accessories in Vietnam'**
  String get hero_subtitle;

  /// No description provided for @explore_now.
  ///
  /// In en, this message translates to:
  /// **'EXPLORE NOW'**
  String get explore_now;

  /// No description provided for @about_title.
  ///
  /// In en, this message translates to:
  /// **'ABOUT US'**
  String get about_title;

  /// No description provided for @about_content.
  ///
  /// In en, this message translates to:
  /// **'Throughout more than 10 years in the industry, I have had the opportunity to travel to many places, meet many people, and I realized that all customers share a common difficulty: how to find a truly reputable and quality plywood manufacturer and supplier.\n\nWith that in mind, I decided to establish Truong Thinh Import Export Trading Joint Stock Company (GAOMINH), with the goal of promoting Vietnamese products and culture to friends around the world.'**
  String get about_content;

  /// No description provided for @years_experience.
  ///
  /// In en, this message translates to:
  /// **'YEARS EXPERIENCE'**
  String get years_experience;

  /// No description provided for @export_countries.
  ///
  /// In en, this message translates to:
  /// **'EXPORT COUNTRIES'**
  String get export_countries;

  /// No description provided for @customers.
  ///
  /// In en, this message translates to:
  /// **'CUSTOMERS'**
  String get customers;

  /// No description provided for @monthly_containers.
  ///
  /// In en, this message translates to:
  /// **'MONTHLY CONTAINERS'**
  String get monthly_containers;

  /// No description provided for @products_title.
  ///
  /// In en, this message translates to:
  /// **'PRODUCTS'**
  String get products_title;

  /// No description provided for @film_plywood.
  ///
  /// In en, this message translates to:
  /// **'Film Faced Plywood'**
  String get film_plywood;

  /// No description provided for @sanded_plywood.
  ///
  /// In en, this message translates to:
  /// **'Sanded Plywood'**
  String get sanded_plywood;

  /// No description provided for @packaging_plywood.
  ///
  /// In en, this message translates to:
  /// **'Packaging Plywood'**
  String get packaging_plywood;

  /// No description provided for @lvl_plywood.
  ///
  /// In en, this message translates to:
  /// **'LVL Plywood'**
  String get lvl_plywood;

  /// No description provided for @cnc_service.
  ///
  /// In en, this message translates to:
  /// **'CNC Cutting Service'**
  String get cnc_service;

  /// No description provided for @birch_plywood.
  ///
  /// In en, this message translates to:
  /// **'Birch Plywood'**
  String get birch_plywood;

  /// No description provided for @company_info.
  ///
  /// In en, this message translates to:
  /// **'COMPANY INFORMATION'**
  String get company_info;

  /// No description provided for @office.
  ///
  /// In en, this message translates to:
  /// **'Office: LK C34 - Embassy Garden, Hoang Minh Thao St., Xuan Tao Ward, Bac Tu Liem District, Hanoi'**
  String get office;

  /// No description provided for @south_branch.
  ///
  /// In en, this message translates to:
  /// **'Southern Branch: Street 19, Linh Chieu Ward, Thu Duc City, Ho Chi Minh City'**
  String get south_branch;

  /// No description provided for @warehouse.
  ///
  /// In en, this message translates to:
  /// **'Warehouse: QL3, Duc Tu, Dong Anh, Hanoi'**
  String get warehouse;

  /// No description provided for @factory.
  ///
  /// In en, this message translates to:
  /// **'Factory: Area 16, Dich Qua Commune, Thanh Son District, Phu Tho Province'**
  String get factory;

  /// No description provided for @policies.
  ///
  /// In en, this message translates to:
  /// **'POLICIES'**
  String get policies;

  /// No description provided for @privacy_policy.
  ///
  /// In en, this message translates to:
  /// **'Privacy Policy'**
  String get privacy_policy;

  /// No description provided for @shipping_policy.
  ///
  /// In en, this message translates to:
  /// **'Shipping Policy'**
  String get shipping_policy;

  /// No description provided for @payment_policy.
  ///
  /// In en, this message translates to:
  /// **'Payment Policy'**
  String get payment_policy;

  /// No description provided for @certification.
  ///
  /// In en, this message translates to:
  /// **'Certification'**
  String get certification;

  /// No description provided for @copyright.
  ///
  /// In en, this message translates to:
  /// **'© Copyright belongs to Truong Thinh Import Export Trading Joint Stock Company'**
  String get copyright;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'vi', 'zh'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return AppLocalizationsEn();
    case 'vi': return AppLocalizationsVi();
    case 'zh': return AppLocalizationsZh();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
