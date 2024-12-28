part of featurebase;

/// Open the Help Center
void openHelpCenter({
  /// Logo centered in the Appbar
  required Widget logo,

  /// Featurebase url (example: https://help.featurebase.app)
  required String helpCenterUrl,

  /// Primary color used
  required Color primaryColor,

  /// Text Color
  Color textColor = Colors.black,

  /// Background color
  Color? backgroundColor,

  /// Hide Authors
  bool hideAuthors = false,

  /// Show Search Bar
  bool showSearchBar = true,

  /// Default Locale (default: en)
  Locale defaultLocale = const Locale('en'),

  /// BuildContext
  required BuildContext context,
}) {
  Navigator.of(context).push(
    MaterialPageRoute<void>(
      builder: (BuildContext context) => ProviderScope(
        child: HelpCenterView(
          logo: logo,
          url: helpCenterUrl,
          primaryColor: primaryColor,
          textColor: textColor,
          backgroundColor: backgroundColor,
          hideAuthors: hideAuthors,
          defaultLocale: defaultLocale,
          showSearchBar: showSearchBar,
        ),
      ),
    ),
  );
}

/// Open the Knowledge Base
@Deprecated('Use openHelpCenter instead')
void openKnowledgeBase({
  /// Logo centered in the Appbar
  required Widget logo,

  /// Featurebase url (example: https://help.featurebase.app)
  required String knowledgeBaseUrl,

  /// Primary color used
  required Color primaryColor,

  /// Text Color
  Color textColor = Colors.black,

  /// Background color
  Color? backgroundColor,

  /// Hide Authors
  bool hideAuthors = false,

  /// BuildContext
  required BuildContext context,
}) {
  Navigator.of(context).push(
    MaterialPageRoute<void>(
      builder: (BuildContext context) => ProviderScope(
        child: HelpCenterView(
          logo: logo,
          url: knowledgeBaseUrl,
          primaryColor: primaryColor,
          textColor: textColor,
          backgroundColor: backgroundColor,
          hideAuthors: hideAuthors,
        ),
      ),
    ),
  );
}
