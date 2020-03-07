import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutterinternationalization/app/app_localizations.dart';
import 'package:flutterinternationalization/app/pages/home_page.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // List all of the app's supported locales here
      supportedLocales: [
        Locale('en', 'US'),
        Locale('pt', 'BR'),
      ],
      localizationsDelegates: [
        // THIS CLASS WILL BE ADDED LATER
        // A class which loads the translations from JSON files
        AppLocalizations.delegate,
        // Built-in localization of basic text for Material widgets
        GlobalMaterialLocalizations.delegate,
        // Built-in localization for text direction LTR/RTL
        GlobalWidgetsLocalizations.delegate,
      ],
      // Returns a locale which will be used by the app
      localeResolutionCallback: (Locale locale, Iterable<Locale> supportedLocales) {
        // Check if the current device locale is supported
        for (Locale supportedLocale in supportedLocales) {
          if (supportedLocale.languageCode == locale.languageCode || supportedLocale.countryCode == locale.countryCode) {
            return supportedLocale;
          }
        }
        // If the locale of the device is not supported, use the first one
        // from the list (English, in this case).
        return supportedLocales.first;
      },
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
