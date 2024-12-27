import 'package:intl/intl.dart' as intl;

import 'featurebase_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Korean (`ko`).
class FeaturebaseLocalizationsKo extends FeaturebaseLocalizations {
  FeaturebaseLocalizationsKo([String locale = 'ko']) : super(locale);

  @override
  String countArticles(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '게시물',
      one: '게시물',
    );
    return '<strong>$count</strong>개의 $_temp0';
  }

  @override
  String writtenBy(String author) {
    return '$author 작성';
  }

  @override
  String get failedToLoad => '로드 실패';

  @override
  String get tryAgainLater => '나중에 다시 시도해주세요';
}