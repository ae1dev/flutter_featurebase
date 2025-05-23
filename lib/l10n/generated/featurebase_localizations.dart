import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'featurebase_localizations_af.dart';
import 'featurebase_localizations_ar.dart';
import 'featurebase_localizations_az.dart';
import 'featurebase_localizations_be.dart';
import 'featurebase_localizations_bg.dart';
import 'featurebase_localizations_bo.dart';
import 'featurebase_localizations_ca.dart';
import 'featurebase_localizations_cs.dart';
import 'featurebase_localizations_da.dart';
import 'featurebase_localizations_de.dart';
import 'featurebase_localizations_el.dart';
import 'featurebase_localizations_en.dart';
import 'featurebase_localizations_es.dart';
import 'featurebase_localizations_fa.dart';
import 'featurebase_localizations_fi.dart';
import 'featurebase_localizations_fr.dart';
import 'featurebase_localizations_gl.dart';
import 'featurebase_localizations_hi.dart';
import 'featurebase_localizations_hr.dart';
import 'featurebase_localizations_hu.dart';
import 'featurebase_localizations_id.dart';
import 'featurebase_localizations_is.dart';
import 'featurebase_localizations_it.dart';
import 'featurebase_localizations_ja.dart';
import 'featurebase_localizations_ko.dart';
import 'featurebase_localizations_lt.dart';
import 'featurebase_localizations_lv.dart';
import 'featurebase_localizations_ms.dart';
import 'featurebase_localizations_nb.dart';
import 'featurebase_localizations_nl.dart';
import 'featurebase_localizations_pl.dart';
import 'featurebase_localizations_pt.dart';
import 'featurebase_localizations_ro.dart';
import 'featurebase_localizations_ru.dart';
import 'featurebase_localizations_sk.dart';
import 'featurebase_localizations_sl.dart';
import 'featurebase_localizations_sr.dart';
import 'featurebase_localizations_sv.dart';
import 'featurebase_localizations_sw.dart';
import 'featurebase_localizations_th.dart';
import 'featurebase_localizations_tr.dart';
import 'featurebase_localizations_uk.dart';
import 'featurebase_localizations_vi.dart';
import 'featurebase_localizations_zh.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of FeaturebaseLocalizations
/// returned by `FeaturebaseLocalizations.of(context)`.
///
/// Applications need to include `FeaturebaseLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'generated/featurebase_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: FeaturebaseLocalizations.localizationsDelegates,
///   supportedLocales: FeaturebaseLocalizations.supportedLocales,
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
/// be consistent with the languages listed in the FeaturebaseLocalizations.supportedLocales
/// property.
abstract class FeaturebaseLocalizations {
  FeaturebaseLocalizations(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static FeaturebaseLocalizations of(BuildContext context) {
    return Localizations.of<FeaturebaseLocalizations>(
        context, FeaturebaseLocalizations)!;
  }

  static const LocalizationsDelegate<FeaturebaseLocalizations> delegate =
      _FeaturebaseLocalizationsDelegate();

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
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('af'),
    Locale('ar'),
    Locale('az'),
    Locale('be'),
    Locale('bg'),
    Locale('bo'),
    Locale('ca'),
    Locale('cs'),
    Locale('da'),
    Locale('de'),
    Locale('de', 'CH'),
    Locale('el'),
    Locale('es'),
    Locale('es', '419'),
    Locale('fa'),
    Locale('fi'),
    Locale('fr'),
    Locale('gl'),
    Locale('hi'),
    Locale('hr'),
    Locale('hu'),
    Locale('id'),
    Locale('is'),
    Locale('it'),
    Locale('ja'),
    Locale('ko'),
    Locale('lt'),
    Locale('lv'),
    Locale('ms'),
    Locale('nb'),
    Locale('nl'),
    Locale('pl'),
    Locale('pt'),
    Locale('pt', 'BR'),
    Locale('ro'),
    Locale('ru'),
    Locale('sk'),
    Locale('sl'),
    Locale('sr'),
    Locale('sv'),
    Locale('sw'),
    Locale('th'),
    Locale('tr'),
    Locale('uk'),
    Locale('vi'),
    Locale('zh'),
    Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hans'),
    Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hant'),
    Locale('zh', 'TW')
  ];

  /// No description provided for @countArticles.
  ///
  /// In en, this message translates to:
  /// **'<strong>{count}</strong> {count, plural, one{article} other{articles}}'**
  String countArticles(int count);

  /// No description provided for @writtenBy.
  ///
  /// In en, this message translates to:
  /// **'Written by {author}'**
  String writtenBy(String author);

  /// No description provided for @lastUpdated.
  ///
  /// In en, this message translates to:
  /// **'Last updated {daysAgo}'**
  String lastUpdated(String daysAgo);

  /// This is the error message that is displayed when the data fails to load.
  ///
  /// In en, this message translates to:
  /// **'Failed to load'**
  String get failedToLoad;

  /// This is the message that is displayed when the user should try again later.
  ///
  /// In en, this message translates to:
  /// **'Try again later'**
  String get tryAgainLater;

  /// This is the message that is displayed when no results are found in search.
  ///
  /// In en, this message translates to:
  /// **'No results found'**
  String get noResultsFound;

  /// This is the title of the changelog page.
  ///
  /// In en, this message translates to:
  /// **'Changelog'**
  String get changelog;

  /// No description provided for @changelogDescription.
  ///
  /// In en, this message translates to:
  /// **'New updates and improvements to {appName}.'**
  String changelogDescription(String appName);

  /// This is the message that is displayed when no changelogs are found.
  ///
  /// In en, this message translates to:
  /// **'No changelogs found'**
  String get noChangelogsFound;

  /// This is the message that is displayed when there are no more changelogs.
  ///
  /// In en, this message translates to:
  /// **'No more changelogs'**
  String get noMoreChangelogs;
}

class _FeaturebaseLocalizationsDelegate
    extends LocalizationsDelegate<FeaturebaseLocalizations> {
  const _FeaturebaseLocalizationsDelegate();

  @override
  Future<FeaturebaseLocalizations> load(Locale locale) {
    return SynchronousFuture<FeaturebaseLocalizations>(
        lookupFeaturebaseLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>[
        'af',
        'ar',
        'az',
        'be',
        'bg',
        'bo',
        'ca',
        'cs',
        'da',
        'de',
        'el',
        'en',
        'es',
        'fa',
        'fi',
        'fr',
        'gl',
        'hi',
        'hr',
        'hu',
        'id',
        'is',
        'it',
        'ja',
        'ko',
        'lt',
        'lv',
        'ms',
        'nb',
        'nl',
        'pl',
        'pt',
        'ro',
        'ru',
        'sk',
        'sl',
        'sr',
        'sv',
        'sw',
        'th',
        'tr',
        'uk',
        'vi',
        'zh'
      ].contains(locale.languageCode);

  @override
  bool shouldReload(_FeaturebaseLocalizationsDelegate old) => false;
}

FeaturebaseLocalizations lookupFeaturebaseLocalizations(Locale locale) {
  // Lookup logic when language+script codes are specified.
  switch (locale.languageCode) {
    case 'zh':
      {
        switch (locale.scriptCode) {
          case 'Hans':
            return FeaturebaseLocalizationsZhHans();
          case 'Hant':
            return FeaturebaseLocalizationsZhHant();
        }
        break;
      }
  }

  // Lookup logic when language+country codes are specified.
  switch (locale.languageCode) {
    case 'de':
      {
        switch (locale.countryCode) {
          case 'CH':
            return FeaturebaseLocalizationsDeCh();
        }
        break;
      }
    case 'es':
      {
        switch (locale.countryCode) {
          case '419':
            return FeaturebaseLocalizationsEs419();
        }
        break;
      }
    case 'pt':
      {
        switch (locale.countryCode) {
          case 'BR':
            return FeaturebaseLocalizationsPtBr();
        }
        break;
      }
    case 'zh':
      {
        switch (locale.countryCode) {
          case 'TW':
            return FeaturebaseLocalizationsZhTw();
        }
        break;
      }
  }

  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'af':
      return FeaturebaseLocalizationsAf();
    case 'ar':
      return FeaturebaseLocalizationsAr();
    case 'az':
      return FeaturebaseLocalizationsAz();
    case 'be':
      return FeaturebaseLocalizationsBe();
    case 'bg':
      return FeaturebaseLocalizationsBg();
    case 'bo':
      return FeaturebaseLocalizationsBo();
    case 'ca':
      return FeaturebaseLocalizationsCa();
    case 'cs':
      return FeaturebaseLocalizationsCs();
    case 'da':
      return FeaturebaseLocalizationsDa();
    case 'de':
      return FeaturebaseLocalizationsDe();
    case 'el':
      return FeaturebaseLocalizationsEl();
    case 'en':
      return FeaturebaseLocalizationsEn();
    case 'es':
      return FeaturebaseLocalizationsEs();
    case 'fa':
      return FeaturebaseLocalizationsFa();
    case 'fi':
      return FeaturebaseLocalizationsFi();
    case 'fr':
      return FeaturebaseLocalizationsFr();
    case 'gl':
      return FeaturebaseLocalizationsGl();
    case 'hi':
      return FeaturebaseLocalizationsHi();
    case 'hr':
      return FeaturebaseLocalizationsHr();
    case 'hu':
      return FeaturebaseLocalizationsHu();
    case 'id':
      return FeaturebaseLocalizationsId();
    case 'is':
      return FeaturebaseLocalizationsIs();
    case 'it':
      return FeaturebaseLocalizationsIt();
    case 'ja':
      return FeaturebaseLocalizationsJa();
    case 'ko':
      return FeaturebaseLocalizationsKo();
    case 'lt':
      return FeaturebaseLocalizationsLt();
    case 'lv':
      return FeaturebaseLocalizationsLv();
    case 'ms':
      return FeaturebaseLocalizationsMs();
    case 'nb':
      return FeaturebaseLocalizationsNb();
    case 'nl':
      return FeaturebaseLocalizationsNl();
    case 'pl':
      return FeaturebaseLocalizationsPl();
    case 'pt':
      return FeaturebaseLocalizationsPt();
    case 'ro':
      return FeaturebaseLocalizationsRo();
    case 'ru':
      return FeaturebaseLocalizationsRu();
    case 'sk':
      return FeaturebaseLocalizationsSk();
    case 'sl':
      return FeaturebaseLocalizationsSl();
    case 'sr':
      return FeaturebaseLocalizationsSr();
    case 'sv':
      return FeaturebaseLocalizationsSv();
    case 'sw':
      return FeaturebaseLocalizationsSw();
    case 'th':
      return FeaturebaseLocalizationsTh();
    case 'tr':
      return FeaturebaseLocalizationsTr();
    case 'uk':
      return FeaturebaseLocalizationsUk();
    case 'vi':
      return FeaturebaseLocalizationsVi();
    case 'zh':
      return FeaturebaseLocalizationsZh();
  }

  throw FlutterError(
      'FeaturebaseLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
