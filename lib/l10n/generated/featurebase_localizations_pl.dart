import 'package:intl/intl.dart' as intl;

import 'featurebase_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Polish (`pl`).
class FeaturebaseLocalizationsPl extends FeaturebaseLocalizations {
  FeaturebaseLocalizationsPl([String locale = 'pl']) : super(locale);

  @override
  String countArticles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'artykułów',
      many: 'artykułów',
      few: 'artykuły',
      one: 'artykuł',
    );
    return '<strong>$count</strong> $_temp0';
  }

  @override
  String writtenBy(String author) {
    return 'Napisane przez $author';
  }

  @override
  String get failedToLoad => 'Nie udało się załadować';

  @override
  String get tryAgainLater => 'Spróbuj ponownie później';
}