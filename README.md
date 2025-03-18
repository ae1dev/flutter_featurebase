# Featurebase (Unofficial) Flutter SDK

Featurebase is a Feedback, Help center, Changelog and Survey hub. Learn more at <https://featurebase.app>

## 📋 Features

- [X] Feedback - ⚠️ Only for users using SSO login ⚠️
- [X] Help center
- [X] Changelog
- [ ] Surveys (Planned)

## 📱🖥️ Platform Support

| Android |  iOS  | MacOS |  Web  | Linux | Windows |
| :-----: | :---: | :---: | :---: | :---: | :-----: |
|   ✅   |   ✅   |   ✅   |   ❌  |   ✅    |    ✅   |

## 🚀 Get started

First you need to add the package to your `pubspec.yaml` file.

### Setup Localizations [Required]

Then add the FeaturebaseLocalizations delegate to your MaterialApp for the packages localization.

```dart
localizationsDelegates: [
    FeaturebaseLocalizations.delegate,
    //Any other delegates
],
```

### Setup SSO Auth [Optional]

SSO is only needed if you want to use the Feedback module.

For the SSO auth you will need to create a GET endpoint that the SDK can call out to to get the JWT for Featurebase. You can [read this article](https://help.featurebase.app/articles/5257986-creating-and-signing-a-jwt-for-single-sign-on) on how to create a JWT token for Featurebase.

When launching the feedback page you will need to provide an authoration token (that will be passed in the `Authorization` header field) that works on your endpoint and an endpoint url.

```dart
openFeedbackPage(
  //...
  auth: SSOAuth(
    token: 'Bearer mytoken123',
    tokenUrl: 'https://api.example.com/v1/auth/featurebase/token',
  ),
  //...
);
```

The GET endpoint that you setup should return the data formated like the example below for the SDK to read.

```json
{
    "data": {
        "token": "the-jwt-token-string"
    }
}

```

## 💬 Feedback

To use the feedback page, you must be using SSO login for your Featurebase organization.

Call the openFeedbackPage function to open the feedback page.

```dart
openFeedbackPage(
    logo: SvgPicture.asset(
        'assets/logo.svg',
        height: 25,
        width: 25,
        colorFilter: const ColorFilter.mode(
            Colors.white,
            BlendMode.srcIn,
        ),
    ),
    auth: SSOAuth(
        token: 'Bearer mytoken123',
        tokenUrl: 'https://api.example.com/v1/auth/featurebase/token',
    ),
    appName: 'Featurebase',
    organizationName: 'exampleOrg',
    primaryColor: Theme.of(context).primaryColor,
    textColor: Colors.white,
    backgroundColor: Theme.of(context).scaffoldBackgroundColor,
    defaultLocale: Locale('en'),
    context: context,
);
```

## 📖 Help Center

Call the openHelpCenter function to open the help center panel.

```dart
openHelpCenter(
    logo: SvgPicture.asset(
        'assets/logo.svg',
        height: 25,
        width: 25,
        colorFilter: const ColorFilter.mode(
            Colors.white,
            BlendMode.srcIn,
        ),
    ),
    organizationName: 'feedback', // This is the Featurebase organization name
    primaryColor: Theme.of(context).primaryColor,
    textColor: Colors.white,
    backgroundColor: Theme.of(context).scaffoldBackgroundColor,
    context: context,
);
```

Example:

![Example Image](https://raw.githubusercontent.com/ae1dev/flutter_featurebase/refs/heads/main/docs/imgs/Featurebase_Help_Center_Example.png)

## 📣 Changelog

Call the openChangelog function to open the changelog page.

```dart
openChangelog(
    logo: SvgPicture.asset(
        'assets/logo.svg',
        height: 25,
        width: 25,
        colorFilter: const ColorFilter.mode(
            Colors.white,
            BlendMode.srcIn,
        ),
    ),
    organizationName: 'feedback', // This is the Featurebase organization name
    primaryColor: Theme.of(context).primaryColor,
    textColor: Colors.white,
    backgroundColor: Theme.of(context).scaffoldBackgroundColor,
    context: context,
);
```

Example:

![Example Image](https://raw.githubusercontent.com/ae1dev/flutter_featurebase/refs/heads/main/docs/imgs/Featurebase_Changelog_Example.png)

## 🌐 Localization

Supported languages:

- Afrikaans
- Arabic
- Azerbaijani
- Belarusian
- Bulgarian
- Tibetan
- Catalan
- Czech
- Danish
- German
- German (Switzerland)
- Greek
- English
- Spanish (Spain)
- Spanish (Latin America)
- Persian
- Finnish
- French
- Galician
- Hindi
- Hungarian
- Indonesian
- Icelandic
- Italian
- Japanese
- Korean
- Lithuanian
- Latvian
- Malay
- Norwegian Bokmal
- Dutch ([@stijnvdkolk](https://github.com/stijnvdkolk))
- Polish
- Portuguese (Brazil)
- Romanian
- Russian
- Slovak
- Slovene
- Serbian
- Swedish
- Swahili
- Tahi
- Turkish
- Ukrainian
- Vietnamese
- Chinese (Simplified)
- Chinese (Traditional)
- Chinese (Traditional - Taiwan)

## 👨‍💻 Contribution

Please file an issue if you find an issue or you can make a pull request.
