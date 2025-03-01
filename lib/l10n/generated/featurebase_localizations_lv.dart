import 'package:intl/intl.dart' as intl;

import 'featurebase_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Latvian (`lv`).
class FeaturebaseLocalizationsLv extends FeaturebaseLocalizations {
  FeaturebaseLocalizationsLv([String locale = 'lv']) : super(locale);

  @override
  String countArticles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'raksti',
      one: 'raksts',
      zero: 'raksti',
    );
    return '<strong>$count</strong> $_temp0';
  }

  @override
  String writtenBy(String author) {
    return 'Autors: $author';
  }

  @override
  String lastUpdated(String daysAgo) {
    return 'Pēdējā atjaunināšana $daysAgo';
  }

  @override
  String get failedToLoad => 'Neizdevās ielādēt';

  @override
  String get tryAgainLater => 'Mēģiniet vēlāk';

  @override
  String get noResultsFound => 'Neviens rezultāts nav atrasts';

  @override
  String get changelog => 'Izmaiņu vēsture';

  @override
  String changelogDescription(String appName) {
    return 'Jaunākie atjauninājumi un uzlabojumi lietotnē $appName.';
  }

  @override
  String get noChangelogsFound => 'Nav atrasta izmaiņu vēsture';

  @override
  String get noMoreChangelogs => 'Vairāk izmaiņu nav';
}
