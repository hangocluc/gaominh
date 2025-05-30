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

  /// No description provided for @about_simple_content.
  ///
  /// In en, this message translates to:
  /// **'GAOMINH INDUSTRIAL AND TRADING COMPANY LIMITED specializes in manufacturing and exporting various types of plywood such as: film faced plywood, melamine faced plywood, birch plywood, poplar plywood, MDF, particle board, etc. Our products are trusted in many domestic and international markets thanks to their superior quality and strict manufacturing process.'**
  String get about_simple_content;

  /// No description provided for @about_detailed_greeting.
  ///
  /// In en, this message translates to:
  /// **'Dear Customers and Partners,'**
  String get about_detailed_greeting;

  /// No description provided for @about_detailed_intro.
  ///
  /// In en, this message translates to:
  /// **'GAOMINH INDUSTRIAL AND TRADING COMPANY LIMITED would like to extend our sincere greetings and heartfelt thanks for your attention and trust throughout the past time.'**
  String get about_detailed_intro;

  /// No description provided for @about_detailed_experience.
  ///
  /// In en, this message translates to:
  /// **'With our extensive experience and commitment to superior quality, we bring customers a diverse range of plywood products, from film faced plywood and melamine faced plywood to birch plywood, MDF, and special technical product lines.'**
  String get about_detailed_experience;

  /// No description provided for @about_detailed_commitment.
  ///
  /// In en, this message translates to:
  /// **'GAO MINH not only focuses on selecting premium raw materials and applying modern manufacturing processes but also strives for perfection in every detail, aiming to create sustainable value and class for every project.'**
  String get about_detailed_commitment;

  /// No description provided for @about_why_choose_us.
  ///
  /// In en, this message translates to:
  /// **'WHY CHOOSE US?'**
  String get about_why_choose_us;

  /// No description provided for @about_motto.
  ///
  /// In en, this message translates to:
  /// **'Operating motto:'**
  String get about_motto;

  /// No description provided for @about_motto_text.
  ///
  /// In en, this message translates to:
  /// **'\"REPUTATION - QUALITY - COOPERATION - MUTUAL DEVELOPMENT\"'**
  String get about_motto_text;

  /// No description provided for @about_commitments.
  ///
  /// In en, this message translates to:
  /// **'Commitments:'**
  String get about_commitments;

  /// No description provided for @about_commitment1.
  ///
  /// In en, this message translates to:
  /// **'Superior product quality: We are committed to providing plywood products with high quality standards, strictly controlled from input materials to manufacturing processes.'**
  String get about_commitment1;

  /// No description provided for @about_commitment2.
  ///
  /// In en, this message translates to:
  /// **'Modern technology: Applying advanced production lines, modern pressing and surface treatment technology, ensuring products with durability, aesthetics, and high applicability.'**
  String get about_commitment2;

  /// No description provided for @about_commitment3.
  ///
  /// In en, this message translates to:
  /// **'Diverse products: We provide many plywood product lines suitable for diverse needs from construction, furniture to household goods manufacturing.'**
  String get about_commitment3;

  /// No description provided for @about_commitment4.
  ///
  /// In en, this message translates to:
  /// **'Professional team: Our experienced technical and consulting team is always ready to support customers from product selection to after-sales service.'**
  String get about_commitment4;

  /// No description provided for @about_commitment5.
  ///
  /// In en, this message translates to:
  /// **'Competitive pricing: With an optimized raw material supply network and manufacturing process, we bring reasonable prices suitable for many market segments.'**
  String get about_commitment5;

  /// No description provided for @about_commitment6.
  ///
  /// In en, this message translates to:
  /// **'On-time delivery commitment: Always ensuring delivery progress so customers can confidently implement projects according to plan.'**
  String get about_commitment6;

  /// No description provided for @about_commitment7.
  ///
  /// In en, this message translates to:
  /// **'Dedicated customer service: We put customer interests first, ready to support and resolve all inquiries quickly and effectively.'**
  String get about_commitment7;

  /// No description provided for @about_certificates.
  ///
  /// In en, this message translates to:
  /// **'PRODUCT CERTIFICATES'**
  String get about_certificates;

  /// No description provided for @about_certificates_intro.
  ///
  /// In en, this message translates to:
  /// **'GAOMINH INDUSTRIAL AND TRADING COMPANY LIMITED always puts product quality and safety first. We are proud of our strict quality management system and compliance with international standards, helping to ensure that GAO MINH\'s plywood products achieve prestigious industry certifications.'**
  String get about_certificates_intro;

  /// No description provided for @about_certificates_list.
  ///
  /// In en, this message translates to:
  /// **'Our notable certificates include:'**
  String get about_certificates_list;

  /// No description provided for @about_certificate1.
  ///
  /// In en, this message translates to:
  /// **'ISO 9001: Quality management system ensuring manufacturing processes and services are always strictly controlled, enhancing customer satisfaction.'**
  String get about_certificate1;

  /// No description provided for @about_certificate2.
  ///
  /// In en, this message translates to:
  /// **'CE (Conformité Européenne): Ensuring products meet safety and quality standards according to European Union regulations.'**
  String get about_certificate2;

  /// No description provided for @about_certificate3.
  ///
  /// In en, this message translates to:
  /// **'FSC (Forest Stewardship Council): Commitment to sustainably sourced wood materials, contributing to environmental protection and responsible forest development.'**
  String get about_certificate3;

  /// No description provided for @about_certificate4.
  ///
  /// In en, this message translates to:
  /// **'CARB Phase 2: The strictest formaldehyde emission control standard from California, USA, ensuring environmentally friendly products and safe for user health.'**
  String get about_certificate4;

  /// No description provided for @about_statistic1_label.
  ///
  /// In en, this message translates to:
  /// **'YEARS OF EXPERIENCE'**
  String get about_statistic1_label;

  /// No description provided for @about_statistic2_label.
  ///
  /// In en, this message translates to:
  /// **'EXPORT COUNTRIES'**
  String get about_statistic2_label;

  /// No description provided for @about_statistic3_label.
  ///
  /// In en, this message translates to:
  /// **'CUSTOMERS'**
  String get about_statistic3_label;

  /// No description provided for @about_statistic4_label.
  ///
  /// In en, this message translates to:
  /// **'MONTHLY CONTAINERS'**
  String get about_statistic4_label;

  /// No description provided for @products_title.
  ///
  /// In en, this message translates to:
  /// **'PRODUCTS'**
  String get products_title;

  /// No description provided for @product1_name.
  ///
  /// In en, this message translates to:
  /// **'Film Faced Plywood'**
  String get product1_name;

  /// No description provided for @product1_description.
  ///
  /// In en, this message translates to:
  /// **'Film faced plywood (also known as formwork plywood) is a high-grade industrial plywood, widely used in construction, especially in concrete pouring work. The product is made from multiple layers of natural wood bonded with waterproof glue, then coated with phenolic film on both sides, creating a smooth surface that is waterproof and wear-resistant.'**
  String get product1_description;

  /// No description provided for @product1_spec_surface.
  ///
  /// In en, this message translates to:
  /// **'Surface'**
  String get product1_spec_surface;

  /// No description provided for @product1_spec_surface_value.
  ///
  /// In en, this message translates to:
  /// **'Brown or black film coating, waterproof'**
  String get product1_spec_surface_value;

  /// No description provided for @product1_spec_core.
  ///
  /// In en, this message translates to:
  /// **'Core Wood'**
  String get product1_spec_core;

  /// No description provided for @product1_spec_core_value.
  ///
  /// In en, this message translates to:
  /// **'Eucalyptus, acacia, mixed, pine'**
  String get product1_spec_core_value;

  /// No description provided for @product1_spec_center.
  ///
  /// In en, this message translates to:
  /// **'Center'**
  String get product1_spec_center;

  /// No description provided for @product1_spec_center_value.
  ///
  /// In en, this message translates to:
  /// **'Full core or mixed core'**
  String get product1_spec_center_value;

  /// No description provided for @product1_spec_glue.
  ///
  /// In en, this message translates to:
  /// **'Glue'**
  String get product1_spec_glue;

  /// No description provided for @product1_spec_glue_value.
  ///
  /// In en, this message translates to:
  /// **'Melamine or Phenolic'**
  String get product1_spec_glue_value;

  /// No description provided for @product1_spec_size.
  ///
  /// In en, this message translates to:
  /// **'Common Size'**
  String get product1_spec_size;

  /// No description provided for @product1_spec_size_value.
  ///
  /// In en, this message translates to:
  /// **'1220x2440mm or as required'**
  String get product1_spec_size_value;

  /// No description provided for @product1_spec_thickness.
  ///
  /// In en, this message translates to:
  /// **'Thickness'**
  String get product1_spec_thickness;

  /// No description provided for @product1_spec_thickness_value.
  ///
  /// In en, this message translates to:
  /// **'12mm – 21mm'**
  String get product1_spec_thickness_value;

  /// No description provided for @product1_spec_application.
  ///
  /// In en, this message translates to:
  /// **'Application'**
  String get product1_spec_application;

  /// No description provided for @product1_spec_application_value.
  ///
  /// In en, this message translates to:
  /// **'Used in construction formwork, truck floors, containers'**
  String get product1_spec_application_value;

  /// No description provided for @product1_highlight1.
  ///
  /// In en, this message translates to:
  /// **'Excellent waterproofing: Film coating protects the board from water, preventing swelling and rot'**
  String get product1_highlight1;

  /// No description provided for @product1_highlight2.
  ///
  /// In en, this message translates to:
  /// **'Smooth surface: Helps create smooth concrete, reducing plastering time'**
  String get product1_highlight2;

  /// No description provided for @product1_highlight3.
  ///
  /// In en, this message translates to:
  /// **'High reusability: Can be used 8-16 times depending on storage conditions'**
  String get product1_highlight3;

  /// No description provided for @product1_highlight4.
  ///
  /// In en, this message translates to:
  /// **'High durability: Resistant to deformation under external forces'**
  String get product1_highlight4;

  /// No description provided for @product1_highlight5.
  ///
  /// In en, this message translates to:
  /// **'Easy construction: Lightweight, easy to cut and install'**
  String get product1_highlight5;

  /// No description provided for @product2_name.
  ///
  /// In en, this message translates to:
  /// **'Melamine Plywood'**
  String get product2_name;

  /// No description provided for @product2_description.
  ///
  /// In en, this message translates to:
  /// **'Melamine plywood is a technical wood material consisting of a plywood core (Plywood, MDF or PB) coated with melamine formaldehyde impregnated paper on the surface. The product has high durability, good moisture and scratch resistance, while providing high aesthetic value.'**
  String get product2_description;

  /// No description provided for @product2_spec_surface.
  ///
  /// In en, this message translates to:
  /// **'Surface'**
  String get product2_spec_surface;

  /// No description provided for @product2_spec_surface_value.
  ///
  /// In en, this message translates to:
  /// **'Melamine paper (various colors, wood grain)'**
  String get product2_spec_surface_value;

  /// No description provided for @product2_spec_core.
  ///
  /// In en, this message translates to:
  /// **'Core Wood'**
  String get product2_spec_core;

  /// No description provided for @product2_spec_core_value.
  ///
  /// In en, this message translates to:
  /// **'Plywood, MDF or particle board'**
  String get product2_spec_core_value;

  /// No description provided for @product2_spec_size.
  ///
  /// In en, this message translates to:
  /// **'Common Size'**
  String get product2_spec_size;

  /// No description provided for @product2_spec_size_value.
  ///
  /// In en, this message translates to:
  /// **'1220x2440mm or as required'**
  String get product2_spec_size_value;

  /// No description provided for @product2_spec_thickness.
  ///
  /// In en, this message translates to:
  /// **'Thickness'**
  String get product2_spec_thickness;

  /// No description provided for @product2_spec_thickness_value.
  ///
  /// In en, this message translates to:
  /// **'5mm – 25mm'**
  String get product2_spec_thickness_value;

  /// No description provided for @product2_spec_glue.
  ///
  /// In en, this message translates to:
  /// **'Glue'**
  String get product2_spec_glue;

  /// No description provided for @product2_spec_glue_value.
  ///
  /// In en, this message translates to:
  /// **'E0'**
  String get product2_spec_glue_value;

  /// No description provided for @product2_spec_application.
  ///
  /// In en, this message translates to:
  /// **'Application'**
  String get product2_spec_application;

  /// No description provided for @product2_spec_application_value.
  ///
  /// In en, this message translates to:
  /// **'Furniture, cabinets, tables and chairs, partitions'**
  String get product2_spec_application_value;

  /// No description provided for @product2_highlight1.
  ///
  /// In en, this message translates to:
  /// **'High durability: Compact core wood, resistant to warping'**
  String get product2_highlight1;

  /// No description provided for @product2_highlight2.
  ///
  /// In en, this message translates to:
  /// **'Moisture and termite resistance: Melamine surface effectively prevents moisture'**
  String get product2_highlight2;

  /// No description provided for @product2_highlight3.
  ///
  /// In en, this message translates to:
  /// **'Diverse aesthetics: Various colors and modern wood grains'**
  String get product2_highlight3;

  /// No description provided for @product2_highlight4.
  ///
  /// In en, this message translates to:
  /// **'Health safety: E0 standard glue - low formaldehyde content'**
  String get product2_highlight4;

  /// No description provided for @product2_highlight5.
  ///
  /// In en, this message translates to:
  /// **'Easy processing: Easy to drill, cut, and install'**
  String get product2_highlight5;

  /// No description provided for @product3_name.
  ///
  /// In en, this message translates to:
  /// **'Birch Plywood'**
  String get product3_name;

  /// No description provided for @product3_description.
  ///
  /// In en, this message translates to:
  /// **'Birch plywood, also known as Birch plywood, is a high-grade plywood made from selected natural Birch wood, known for its durability, high stability, and bright, uniform color. The product is widely used in furniture, high-end wood products, and architectural projects requiring high aesthetics and quality.'**
  String get product3_description;

  /// No description provided for @product3_spec_core.
  ///
  /// In en, this message translates to:
  /// **'Core Wood'**
  String get product3_spec_core;

  /// No description provided for @product3_spec_core_value.
  ///
  /// In en, this message translates to:
  /// **'Eucalyptus, acacia, mixed, pine'**
  String get product3_spec_core_value;

  /// No description provided for @product3_spec_surface.
  ///
  /// In en, this message translates to:
  /// **'Surface Grade'**
  String get product3_spec_surface;

  /// No description provided for @product3_spec_surface_value.
  ///
  /// In en, this message translates to:
  /// **'C/C, C/D+, D+/D, D+E'**
  String get product3_spec_surface_value;

  /// No description provided for @product3_spec_features.
  ///
  /// In en, this message translates to:
  /// **'Features'**
  String get product3_spec_features;

  /// No description provided for @product3_spec_features_value.
  ///
  /// In en, this message translates to:
  /// **'Hard, strong, beautiful surface, easy to process, Smooth surface, easy to paint PU, UV coating'**
  String get product3_spec_features_value;

  /// No description provided for @product3_spec_size.
  ///
  /// In en, this message translates to:
  /// **'Common Size'**
  String get product3_spec_size;

  /// No description provided for @product3_spec_size_value.
  ///
  /// In en, this message translates to:
  /// **'1220x2440mm or as required'**
  String get product3_spec_size_value;

  /// No description provided for @product3_spec_thickness.
  ///
  /// In en, this message translates to:
  /// **'Thickness'**
  String get product3_spec_thickness;

  /// No description provided for @product3_spec_thickness_value.
  ///
  /// In en, this message translates to:
  /// **'5mm – 25mm'**
  String get product3_spec_thickness_value;

  /// No description provided for @product3_spec_tolerance.
  ///
  /// In en, this message translates to:
  /// **'Tolerance'**
  String get product3_spec_tolerance;

  /// No description provided for @product3_spec_tolerance_value.
  ///
  /// In en, this message translates to:
  /// **'± 0.3 mm'**
  String get product3_spec_tolerance_value;

  /// No description provided for @product3_spec_glue.
  ///
  /// In en, this message translates to:
  /// **'Glue'**
  String get product3_spec_glue;

  /// No description provided for @product3_spec_glue_value.
  ///
  /// In en, this message translates to:
  /// **'E0, E1, E2, CARB P2'**
  String get product3_spec_glue_value;

  /// No description provided for @product3_spec_application.
  ///
  /// In en, this message translates to:
  /// **'Application'**
  String get product3_spec_application;

  /// No description provided for @product3_spec_application_value.
  ///
  /// In en, this message translates to:
  /// **'High-end furniture, table tops, kitchen cabinets, flooring'**
  String get product3_spec_application_value;

  /// No description provided for @product4_name.
  ///
  /// In en, this message translates to:
  /// **'Poplar Plywood'**
  String get product4_name;

  /// No description provided for @product4_description.
  ///
  /// In en, this message translates to:
  /// **'Poplar plywood is a high-quality plywood commonly used in the furniture and construction industry.'**
  String get product4_description;

  /// No description provided for @product4_spec_core.
  ///
  /// In en, this message translates to:
  /// **'Core Wood'**
  String get product4_spec_core;

  /// No description provided for @product4_spec_core_value.
  ///
  /// In en, this message translates to:
  /// **'Eucalyptus, acacia, mixed, pine'**
  String get product4_spec_core_value;

  /// No description provided for @product4_spec_surface.
  ///
  /// In en, this message translates to:
  /// **'Surface Grade'**
  String get product4_spec_surface;

  /// No description provided for @product4_spec_surface_value.
  ///
  /// In en, this message translates to:
  /// **'A+/A+, A/A+, A+/B, B+B'**
  String get product4_spec_surface_value;

  /// No description provided for @product4_spec_features.
  ///
  /// In en, this message translates to:
  /// **'Features'**
  String get product4_spec_features;

  /// No description provided for @product4_spec_features_value.
  ///
  /// In en, this message translates to:
  /// **'Hard, strong, beautiful surface, easy to process'**
  String get product4_spec_features_value;

  /// No description provided for @product4_spec_size.
  ///
  /// In en, this message translates to:
  /// **'Common Size'**
  String get product4_spec_size;

  /// No description provided for @product4_spec_size_value.
  ///
  /// In en, this message translates to:
  /// **'1220x2440mm or as required'**
  String get product4_spec_size_value;

  /// No description provided for @product4_spec_thickness.
  ///
  /// In en, this message translates to:
  /// **'Thickness'**
  String get product4_spec_thickness;

  /// No description provided for @product4_spec_thickness_value.
  ///
  /// In en, this message translates to:
  /// **'5mm – 25mm'**
  String get product4_spec_thickness_value;

  /// No description provided for @product4_spec_tolerance.
  ///
  /// In en, this message translates to:
  /// **'Tolerance'**
  String get product4_spec_tolerance;

  /// No description provided for @product4_spec_tolerance_value.
  ///
  /// In en, this message translates to:
  /// **'± 0.3 mm'**
  String get product4_spec_tolerance_value;

  /// No description provided for @product4_spec_glue.
  ///
  /// In en, this message translates to:
  /// **'Glue'**
  String get product4_spec_glue;

  /// No description provided for @product4_spec_glue_value.
  ///
  /// In en, this message translates to:
  /// **'E0, E1, E2, CARB P2'**
  String get product4_spec_glue_value;

  /// No description provided for @product4_spec_application.
  ///
  /// In en, this message translates to:
  /// **'Application'**
  String get product4_spec_application;

  /// No description provided for @product4_spec_application_value.
  ///
  /// In en, this message translates to:
  /// **'Furniture, decoration, export products'**
  String get product4_spec_application_value;

  /// No description provided for @product5_name.
  ///
  /// In en, this message translates to:
  /// **'Technical Veneer Plywood'**
  String get product5_name;

  /// No description provided for @product5_description.
  ///
  /// In en, this message translates to:
  /// **'Technical veneer plywood is a plywood product coated with technical veneer - a type of veneer made from natural wood, processed and restructured using modern technology to create uniform patterns and high aesthetics.'**
  String get product5_description;

  /// No description provided for @product5_spec_core.
  ///
  /// In en, this message translates to:
  /// **'Core Wood'**
  String get product5_spec_core;

  /// No description provided for @product5_spec_core_value.
  ///
  /// In en, this message translates to:
  /// **'Eucalyptus, acacia, mixed, pine'**
  String get product5_spec_core_value;

  /// No description provided for @product5_spec_surface.
  ///
  /// In en, this message translates to:
  /// **'Surface Grade'**
  String get product5_spec_surface;

  /// No description provided for @product5_spec_surface_value.
  ///
  /// In en, this message translates to:
  /// **'Technical veneer on one or both sides'**
  String get product5_spec_surface_value;

  /// No description provided for @product5_spec_features.
  ///
  /// In en, this message translates to:
  /// **'Features'**
  String get product5_spec_features;

  /// No description provided for @product5_spec_features_value.
  ///
  /// In en, this message translates to:
  /// **'Hard, strong, beautiful surface, easy to process. Smooth surface, easy to paint PU, UV coating or MELAMINE lamination, Cost-effective compared to natural wood veneer'**
  String get product5_spec_features_value;

  /// No description provided for @product5_spec_size.
  ///
  /// In en, this message translates to:
  /// **'Common Size'**
  String get product5_spec_size;

  /// No description provided for @product5_spec_size_value.
  ///
  /// In en, this message translates to:
  /// **'1220x2440mm or as required'**
  String get product5_spec_size_value;

  /// No description provided for @product5_spec_thickness.
  ///
  /// In en, this message translates to:
  /// **'Thickness'**
  String get product5_spec_thickness;

  /// No description provided for @product5_spec_thickness_value.
  ///
  /// In en, this message translates to:
  /// **'5mm – 25mm'**
  String get product5_spec_thickness_value;

  /// No description provided for @product5_spec_tolerance.
  ///
  /// In en, this message translates to:
  /// **'Tolerance'**
  String get product5_spec_tolerance;

  /// No description provided for @product5_spec_tolerance_value.
  ///
  /// In en, this message translates to:
  /// **'± 0.3 mm'**
  String get product5_spec_tolerance_value;

  /// No description provided for @product5_spec_glue.
  ///
  /// In en, this message translates to:
  /// **'Glue'**
  String get product5_spec_glue;

  /// No description provided for @product5_spec_glue_value.
  ///
  /// In en, this message translates to:
  /// **'E0, E1, E2, CARB P2'**
  String get product5_spec_glue_value;

  /// No description provided for @product5_spec_application.
  ///
  /// In en, this message translates to:
  /// **'Application'**
  String get product5_spec_application;

  /// No description provided for @product5_spec_application_value.
  ///
  /// In en, this message translates to:
  /// **'Furniture, decoration, export products'**
  String get product5_spec_application_value;

  /// No description provided for @product6_name.
  ///
  /// In en, this message translates to:
  /// **'MDF Board'**
  String get product6_name;

  /// No description provided for @product6_description.
  ///
  /// In en, this message translates to:
  /// **'MDF (Medium Density Fiberboard) is a common industrial wood product, made from fine wood powder bonded with specialized glue (urea formaldehyde, melamine or phenolic), pressed under high temperature and pressure. MDF has a flat surface, is easy to process, and is commonly used in furniture manufacturing and decoration.'**
  String get product6_description;

  /// No description provided for @product6_spec_surface.
  ///
  /// In en, this message translates to:
  /// **'Surface'**
  String get product6_spec_surface;

  /// No description provided for @product6_spec_surface_value.
  ///
  /// In en, this message translates to:
  /// **'Smooth, easy to paint, veneer, melamine'**
  String get product6_spec_surface_value;

  /// No description provided for @product6_spec_size.
  ///
  /// In en, this message translates to:
  /// **'Common Size'**
  String get product6_spec_size;

  /// No description provided for @product6_spec_size_value.
  ///
  /// In en, this message translates to:
  /// **'1220x2440mm or as required'**
  String get product6_spec_size_value;

  /// No description provided for @product6_spec_thickness.
  ///
  /// In en, this message translates to:
  /// **'Thickness'**
  String get product6_spec_thickness;

  /// No description provided for @product6_spec_thickness_value.
  ///
  /// In en, this message translates to:
  /// **'5mm – 25mm'**
  String get product6_spec_thickness_value;

  /// No description provided for @product6_spec_glue.
  ///
  /// In en, this message translates to:
  /// **'Glue'**
  String get product6_spec_glue;

  /// No description provided for @product6_spec_glue_value.
  ///
  /// In en, this message translates to:
  /// **'E0, E1, E2'**
  String get product6_spec_glue_value;

  /// No description provided for @product6_spec_application.
  ///
  /// In en, this message translates to:
  /// **'Application'**
  String get product6_spec_application;

  /// No description provided for @product6_spec_application_value.
  ///
  /// In en, this message translates to:
  /// **'Furniture, CNC processing, cabinet manufacturing'**
  String get product6_spec_application_value;

  /// No description provided for @product7_name.
  ///
  /// In en, this message translates to:
  /// **'Particle Board'**
  String get product7_name;

  /// No description provided for @product7_description.
  ///
  /// In en, this message translates to:
  /// **'Particle board is an industrial wood material made from wood scraps, shavings, sawdust... mixed with specialized glue and pressed under high temperature and pressure to form boards with standard thickness and size.'**
  String get product7_description;

  /// No description provided for @product7_spec_surface.
  ///
  /// In en, this message translates to:
  /// **'Surface'**
  String get product7_spec_surface;

  /// No description provided for @product7_spec_surface_value.
  ///
  /// In en, this message translates to:
  /// **'Melamine, Laminate or Veneer coating, can be sanded smooth, easy to laminate or finish paint'**
  String get product7_spec_surface_value;

  /// No description provided for @product7_spec_core.
  ///
  /// In en, this message translates to:
  /// **'Core Wood'**
  String get product7_spec_core;

  /// No description provided for @product7_spec_core_value.
  ///
  /// In en, this message translates to:
  /// **'Acacia, eucalyptus, pine, or other plantation wood crushed into small pieces'**
  String get product7_spec_core_value;

  /// No description provided for @product7_spec_center.
  ///
  /// In en, this message translates to:
  /// **'Center'**
  String get product7_spec_center;

  /// No description provided for @product7_spec_center_value.
  ///
  /// In en, this message translates to:
  /// **'Uniform core from pressed wood particles or mixed core'**
  String get product7_spec_center_value;

  /// No description provided for @product7_spec_glue.
  ///
  /// In en, this message translates to:
  /// **'Glue'**
  String get product7_spec_glue;

  /// No description provided for @product7_spec_glue_value.
  ///
  /// In en, this message translates to:
  /// **'Urea Formaldehyde (UF), Melamine or Phenolic'**
  String get product7_spec_glue_value;

  /// No description provided for @product7_spec_size.
  ///
  /// In en, this message translates to:
  /// **'Common Size'**
  String get product7_spec_size;

  /// No description provided for @product7_spec_size_value.
  ///
  /// In en, this message translates to:
  /// **'1220x2440mm or as required'**
  String get product7_spec_size_value;

  /// No description provided for @product7_spec_thickness.
  ///
  /// In en, this message translates to:
  /// **'Thickness'**
  String get product7_spec_thickness;

  /// No description provided for @product7_spec_thickness_value.
  ///
  /// In en, this message translates to:
  /// **'9mm – 25mm'**
  String get product7_spec_thickness_value;

  /// No description provided for @product7_spec_application.
  ///
  /// In en, this message translates to:
  /// **'Application'**
  String get product7_spec_application;

  /// No description provided for @product7_spec_application_value.
  ///
  /// In en, this message translates to:
  /// **'Furniture manufacturing such as tables, chairs, cabinets, shelves. Office partitions, decorative walls, temporary flooring'**
  String get product7_spec_application_value;

  /// No description provided for @product8_name.
  ///
  /// In en, this message translates to:
  /// **'High Pressure Laminate (HPL) Plywood'**
  String get product8_name;

  /// No description provided for @product8_description.
  ///
  /// In en, this message translates to:
  /// **'High pressure laminate plywood is a type of plywood coated with HPL (High Pressure Laminate) - a technical plastic wood laminate. The HPL coating is pressed onto the surface or back of the board under high pressure and temperature after the board is finished, enhancing durability and heat resistance.'**
  String get product8_description;

  /// No description provided for @product8_spec_hpl_thickness.
  ///
  /// In en, this message translates to:
  /// **'HPL Layer Thickness'**
  String get product8_spec_hpl_thickness;

  /// No description provided for @product8_spec_hpl_thickness_value.
  ///
  /// In en, this message translates to:
  /// **'0.5 – 1.5 mm'**
  String get product8_spec_hpl_thickness_value;

  /// No description provided for @product8_spec_surface.
  ///
  /// In en, this message translates to:
  /// **'Surface Treatment'**
  String get product8_spec_surface;

  /// No description provided for @product8_spec_surface_value.
  ///
  /// In en, this message translates to:
  /// **'Matt, Smooth, Embossed grain'**
  String get product8_spec_surface_value;

  /// No description provided for @product8_spec_colors.
  ///
  /// In en, this message translates to:
  /// **'HPL Colors'**
  String get product8_spec_colors;

  /// No description provided for @product8_spec_colors_value.
  ///
  /// In en, this message translates to:
  /// **'White, black, solid colors, wood grain (maple, birch, cherry, and over 500 other colors)'**
  String get product8_spec_colors_value;

  /// No description provided for @product8_spec_core.
  ///
  /// In en, this message translates to:
  /// **'Core Wood'**
  String get product8_spec_core;

  /// No description provided for @product8_spec_core_value.
  ///
  /// In en, this message translates to:
  /// **'Poplar, acacia, hardwood, full eucalyptus, birch'**
  String get product8_spec_core_value;

  /// No description provided for @product8_spec_size.
  ///
  /// In en, this message translates to:
  /// **'Common Size'**
  String get product8_spec_size;

  /// No description provided for @product8_spec_size_value.
  ///
  /// In en, this message translates to:
  /// **'1220x2440mm or as required'**
  String get product8_spec_size_value;

  /// No description provided for @product8_spec_thickness.
  ///
  /// In en, this message translates to:
  /// **'Thickness'**
  String get product8_spec_thickness;

  /// No description provided for @product8_spec_thickness_value.
  ///
  /// In en, this message translates to:
  /// **'5mm – 25mm'**
  String get product8_spec_thickness_value;

  /// No description provided for @product8_spec_glue.
  ///
  /// In en, this message translates to:
  /// **'Glue'**
  String get product8_spec_glue;

  /// No description provided for @product8_spec_glue_value.
  ///
  /// In en, this message translates to:
  /// **'MR / E1 / E0 / Melamine / WBP'**
  String get product8_spec_glue_value;

  /// No description provided for @product8_spec_application.
  ///
  /// In en, this message translates to:
  /// **'Application'**
  String get product8_spec_application;

  /// No description provided for @product8_spec_application_value.
  ///
  /// In en, this message translates to:
  /// **'Kitchens, kitchen cabinets, Doors, interior wall panels, Work tables, window sills, Ceilings'**
  String get product8_spec_application_value;

  /// No description provided for @product8_highlight1.
  ///
  /// In en, this message translates to:
  /// **'Resistant to high temperature and radiant heat'**
  String get product8_highlight1;

  /// No description provided for @product8_highlight2.
  ///
  /// In en, this message translates to:
  /// **'Effective fire spread prevention'**
  String get product8_highlight2;

  /// No description provided for @product8_highlight3.
  ///
  /// In en, this message translates to:
  /// **'Resistant to abrasion and impact'**
  String get product8_highlight3;

  /// No description provided for @product8_highlight4.
  ///
  /// In en, this message translates to:
  /// **'Water and stain resistant'**
  String get product8_highlight4;

  /// No description provided for @product8_highlight5.
  ///
  /// In en, this message translates to:
  /// **'Long lifespan and stability'**
  String get product8_highlight5;

  /// No description provided for @product_specifications.
  ///
  /// In en, this message translates to:
  /// **'Specifications:'**
  String get product_specifications;

  /// No description provided for @product_highlights.
  ///
  /// In en, this message translates to:
  /// **'Highlights:'**
  String get product_highlights;

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

  /// No description provided for @contact_title.
  ///
  /// In en, this message translates to:
  /// **'CONTACT'**
  String get contact_title;

  /// No description provided for @contact_info.
  ///
  /// In en, this message translates to:
  /// **'CONTACT INFORMATION'**
  String get contact_info;

  /// No description provided for @send_message.
  ///
  /// In en, this message translates to:
  /// **'SEND MESSAGE'**
  String get send_message;

  /// No description provided for @full_name.
  ///
  /// In en, this message translates to:
  /// **'Full name *'**
  String get full_name;

  /// No description provided for @email.
  ///
  /// In en, this message translates to:
  /// **'Email *'**
  String get email;

  /// No description provided for @phone.
  ///
  /// In en, this message translates to:
  /// **'Phone number'**
  String get phone;

  /// No description provided for @message.
  ///
  /// In en, this message translates to:
  /// **'Message *'**
  String get message;

  /// No description provided for @send_button.
  ///
  /// In en, this message translates to:
  /// **'SEND MESSAGE'**
  String get send_button;

  /// No description provided for @message_sent.
  ///
  /// In en, this message translates to:
  /// **'Message sent successfully!'**
  String get message_sent;

  /// No description provided for @connect_with_us.
  ///
  /// In en, this message translates to:
  /// **'CONNECT WITH US'**
  String get connect_with_us;

  /// No description provided for @name_required.
  ///
  /// In en, this message translates to:
  /// **'Please enter your name'**
  String get name_required;

  /// No description provided for @email_required.
  ///
  /// In en, this message translates to:
  /// **'Please enter your email'**
  String get email_required;

  /// No description provided for @email_invalid.
  ///
  /// In en, this message translates to:
  /// **'Invalid email address'**
  String get email_invalid;

  /// No description provided for @message_required.
  ///
  /// In en, this message translates to:
  /// **'Please enter your message'**
  String get message_required;

  /// No description provided for @activities_title.
  ///
  /// In en, this message translates to:
  /// **'Activities'**
  String get activities_title;

  /// No description provided for @activity1_title.
  ///
  /// In en, this message translates to:
  /// **'Gao Minh Sports Day and Year-End Party 2024'**
  String get activity1_title;

  /// No description provided for @activity1_description.
  ///
  /// In en, this message translates to:
  /// **'The year-end party is not just an event, but also a sincere thank you and a festival to honor those who have contributed to TT ...'**
  String get activity1_description;

  /// No description provided for @activity1_content.
  ///
  /// In en, this message translates to:
  /// **'The year-end party is not just an event, but also a sincere thank you and a festival to honor those who have contributed to Gao Minh as it is today.\n\n2023 ended with many successes and challenges. Gao Minh organized the year-end party to summarize a productive year and welcome 2024 with new expectations.\n\nThe party took place in a warm, joyful atmosphere with the participation of all company staff. This is an opportunity for everyone to look back on the past journey, share beautiful memories, and aim for new goals in 2024.'**
  String get activity1_content;

  /// No description provided for @activity2_title.
  ///
  /// In en, this message translates to:
  /// **'Tips for Choosing Plywood Core for Packaging?'**
  String get activity2_title;

  /// No description provided for @activity2_description.
  ///
  /// In en, this message translates to:
  /// **'The core of packaging plywood determines durability, strength, and flexibility. Keo core is suitable for heavy goods, Styrax core is light and cost-effective, Mix...'**
  String get activity2_description;

  /// No description provided for @activity2_content.
  ///
  /// In en, this message translates to:
  /// **'The core of packaging plywood determines the durability, strength, and flexibility of the product. There are several types of cores to choose from:\n\n1. Keo Core:\n- Suitable for heavy goods\n- High durability\n- Good load-bearing\n- Higher cost\n\n2. Styrax Core:\n- Light and cost-effective\n- Suitable for light goods\n- Easy to process\n- Reasonable price\n\n3. Mixed Core:\n- Combines the advantages of different cores\n- Balances cost and quality\n- Flexible in use\n\nChoosing the type of core depends on:\n- Weight of goods\n- Durability requirements\n- Budget\n- Usage conditions'**
  String get activity2_content;

  /// No description provided for @activity3_title.
  ///
  /// In en, this message translates to:
  /// **'New Trends in the Plywood Industry'**
  String get activity3_title;

  /// No description provided for @activity3_description.
  ///
  /// In en, this message translates to:
  /// **'The plywood industry is witnessing rapid changes with many emerging trends, reflecting the development of technology and market demand...'**
  String get activity3_description;

  /// No description provided for @activity3_content.
  ///
  /// In en, this message translates to:
  /// **'The plywood industry is witnessing rapid changes with many emerging trends, reflecting the development of technology and market demand. Some key trends:\n\n1. Eco-friendly materials:\n- Use of formaldehyde-free adhesives\n- Wood from sustainable sources\n- Green production processes\n\n2. Advanced production technology:\n- Process automation\n- AI-based quality control\n- Optimized material usage\n\n3. Product diversification:\n- Ultra-thin plywood\n- Fire-resistant plywood\n- High-end decorative plywood\n\n4. New applications:\n- Smart furniture\n- Green construction\n- Premium packaging'**
  String get activity3_content;

  /// No description provided for @footer_company_info.
  ///
  /// In en, this message translates to:
  /// **'COMPANY INFORMATION'**
  String get footer_company_info;

  /// No description provided for @footer_company_name.
  ///
  /// In en, this message translates to:
  /// **'Company name: GAOMINH INDUSTRIAL AND TRADING COMPANY LIMITED'**
  String get footer_company_name;

  /// No description provided for @footer_address.
  ///
  /// In en, this message translates to:
  /// **'Address: 1st Floor, 9B, Lane 391 Nguyen Van Cu Street, Vo Cuong Ward, Bac Ninh City, Bac Ninh Province, Vietnam'**
  String get footer_address;

  /// No description provided for @footer_email.
  ///
  /// In en, this message translates to:
  /// **'Email: general.gaominh@gmail.com'**
  String get footer_email;

  /// No description provided for @footer_phone.
  ///
  /// In en, this message translates to:
  /// **'Phone: 039 4126881 (Mr.Bai)'**
  String get footer_phone;

  /// No description provided for @footer_products.
  ///
  /// In en, this message translates to:
  /// **'PRODUCTS'**
  String get footer_products;

  /// No description provided for @footer_interior_plywood.
  ///
  /// In en, this message translates to:
  /// **'Interior Plywood'**
  String get footer_interior_plywood;

  /// No description provided for @footer_construction_plywood.
  ///
  /// In en, this message translates to:
  /// **'Construction Plywood'**
  String get footer_construction_plywood;

  /// No description provided for @footer_industrial_wood.
  ///
  /// In en, this message translates to:
  /// **'Industrial Wood'**
  String get footer_industrial_wood;

  /// No description provided for @footer_plywood_accessories.
  ///
  /// In en, this message translates to:
  /// **'PLYWOOD ACCESSORIES'**
  String get footer_plywood_accessories;

  /// No description provided for @footer_cnc_cutting.
  ///
  /// In en, this message translates to:
  /// **'CNC CUTTING'**
  String get footer_cnc_cutting;

  /// No description provided for @footer_other_wood_products.
  ///
  /// In en, this message translates to:
  /// **'OTHER WOOD PRODUCTS'**
  String get footer_other_wood_products;

  /// No description provided for @footer_policies.
  ///
  /// In en, this message translates to:
  /// **'POLICIES'**
  String get footer_policies;

  /// No description provided for @footer_privacy_policy.
  ///
  /// In en, this message translates to:
  /// **'Privacy Policy'**
  String get footer_privacy_policy;

  /// No description provided for @footer_shipping_policy.
  ///
  /// In en, this message translates to:
  /// **'Shipping Policy'**
  String get footer_shipping_policy;

  /// No description provided for @footer_payment_policy.
  ///
  /// In en, this message translates to:
  /// **'Payment Policy'**
  String get footer_payment_policy;

  /// No description provided for @footer_certificates.
  ///
  /// In en, this message translates to:
  /// **'Certificates'**
  String get footer_certificates;

  /// No description provided for @news_title.
  ///
  /// In en, this message translates to:
  /// **'NEWS'**
  String get news_title;

  /// No description provided for @news1_title.
  ///
  /// In en, this message translates to:
  /// **'What is Film Faced Plywood? Applications in Modern Construction'**
  String get news1_title;

  /// No description provided for @news1_date.
  ///
  /// In en, this message translates to:
  /// **'March 14'**
  String get news1_date;

  /// No description provided for @news1_description.
  ///
  /// In en, this message translates to:
  /// **'In modern construction, choosing the right materials plays a crucial role in the success of every project...'**
  String get news1_description;

  /// No description provided for @news1_content.
  ///
  /// In en, this message translates to:
  /// **'In modern construction, choosing the right materials plays a crucial role in the success of every project. Film faced plywood has become an indispensable material in the construction industry due to its outstanding features and diverse applications.\n\nFilm faced plywood is a high-grade industrial plywood, widely used in construction, especially in concrete pouring work. The product is made from multiple layers of natural wood bonded with waterproof glue, then coated with phenolic film on both sides, creating a smooth surface that is waterproof and wear-resistant.\n\nKey features:\n- Waterproof and moisture-resistant\n- High durability and load-bearing capacity\n- Smooth surface, easy to clean\n- Reusable multiple times\n- Cost-effective compared to other materials\n\nApplications:\n- Concrete formwork\n- Truck floors\n- Container flooring\n- Industrial flooring\n- Temporary structures'**
  String get news1_content;

  /// No description provided for @news2_title.
  ///
  /// In en, this message translates to:
  /// **'Comparing Decorative Plywood and Natural Wood: Which to Choose?'**
  String get news2_title;

  /// No description provided for @news2_date.
  ///
  /// In en, this message translates to:
  /// **'March 12'**
  String get news2_date;

  /// No description provided for @news2_description.
  ///
  /// In en, this message translates to:
  /// **'Industrial plywood and natural wood are two common materials in the furniture and construction industry. However, choosing...'**
  String get news2_description;

  /// No description provided for @news2_content.
  ///
  /// In en, this message translates to:
  /// **'Industrial plywood and natural wood are two common materials in the furniture and construction industry. However, choosing between them depends on various factors such as purpose, budget, and design requirements.\n\nDecorative Plywood Advantages:\n- More affordable\n- Consistent quality\n- Easy to process\n- Available in various designs\n- Environmentally friendly\n\nNatural Wood Advantages:\n- Unique grain patterns\n- Natural beauty\n- High durability\n- Can be restored\n- Traditional value\n\nConsiderations when choosing:\n- Project budget\n- Design requirements\n- Usage environment\n- Maintenance capacity\n- Environmental impact'**
  String get news2_content;

  /// No description provided for @news3_title.
  ///
  /// In en, this message translates to:
  /// **'3 Types of Plywood Making Waves in Modern Interior Design'**
  String get news3_title;

  /// No description provided for @news3_date.
  ///
  /// In en, this message translates to:
  /// **'March 03'**
  String get news3_date;

  /// No description provided for @news3_description.
  ///
  /// In en, this message translates to:
  /// **'Looking to renovate your home or design new interiors? Choosing the right type of plywood can make a big difference...'**
  String get news3_description;

  /// No description provided for @news3_content.
  ///
  /// In en, this message translates to:
  /// **'Looking to renovate your home or design new interiors? Choosing the right type of plywood can make a big difference in both aesthetics and functionality. Here are three types of plywood that are currently trending in modern interior design:\n\n1. Birch Plywood:\n- Clean, light appearance\n- High strength and stability\n- Perfect for furniture\n- Premium quality\n\n2. Melamine Plywood:\n- Various color options\n- Scratch-resistant surface\n- Easy to clean\n- Cost-effective\n\n3. WPC Plywood:\n- Waterproof properties\n- Modern look\n- Durable and long-lasting\n- Suitable for wet areas\n\nEach type has its own advantages and is suitable for different applications. Consider your specific needs and design goals when making a choice.'**
  String get news3_content;

  /// No description provided for @gallery_title.
  ///
  /// In en, this message translates to:
  /// **'GALLERY'**
  String get gallery_title;

  /// No description provided for @product9_name.
  ///
  /// In en, this message translates to:
  /// **'Wood Wave Panel'**
  String get product9_name;

  /// No description provided for @product9_description.
  ///
  /// In en, this message translates to:
  /// **'Wood wave panel is a modern decorative material that combines the natural beauty of wood with the durability of plastic. The product features a unique wave pattern that creates an elegant and modern look, suitable for both interior and exterior applications.'**
  String get product9_description;

  /// No description provided for @product9_spec_names.
  ///
  /// In en, this message translates to:
  /// **'Common Names'**
  String get product9_spec_names;

  /// No description provided for @product9_spec_names_value.
  ///
  /// In en, this message translates to:
  /// **'• Wood Plastic Composite Wave Panel\n• Composite Wave Panel\n• Wave Ceiling/Wall Panel'**
  String get product9_spec_names_value;

  /// No description provided for @product9_spec_material.
  ///
  /// In en, this message translates to:
  /// **'Material'**
  String get product9_spec_material;

  /// No description provided for @product9_spec_material_value.
  ///
  /// In en, this message translates to:
  /// **'• Natural wood veneer\n• Or: Wood Plastic Composite (WPC) - combination of wood powder and plastic\n• Premium types may have additional melamine, laminate, or technical veneer coating depending on usage'**
  String get product9_spec_material_value;

  /// No description provided for @product9_spec_size.
  ///
  /// In en, this message translates to:
  /// **'Common Sizes'**
  String get product9_spec_size;

  /// No description provided for @product9_spec_size_value.
  ///
  /// In en, this message translates to:
  /// **'• Length: 2,800mm - 3,000mm\n• Width: 120mm - 195mm\n• Thickness: 9mm - 18mm\n• Wave spacing and number of waves vary by design (3, 4, 5 waves...)'**
  String get product9_spec_size_value;

  /// No description provided for @product9_spec_application.
  ///
  /// In en, this message translates to:
  /// **'Applications'**
  String get product9_spec_application;

  /// No description provided for @product9_spec_application_value.
  ///
  /// In en, this message translates to:
  /// **'• Wall and ceiling decoration\n• Living room, bedroom, hallway, showroom, office decoration\n• Sound insulation (with backing layer)\n• Creates modern, luxurious and cozy atmosphere'**
  String get product9_spec_application_value;

  /// No description provided for @product9_spec_advantages.
  ///
  /// In en, this message translates to:
  /// **'Advantages'**
  String get product9_spec_advantages;

  /// No description provided for @product9_spec_advantages_value.
  ///
  /// In en, this message translates to:
  /// **'• High aesthetic value\n• Easy installation\n• Moisture resistant, no warping (especially WPC)\n• Various colors: light wood grain, dark wood grain, brown, gray, black...'**
  String get product9_spec_advantages_value;
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
