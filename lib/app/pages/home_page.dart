import 'package:flutter/material.dart';
import 'package:flutterinternationalization/app/app_localizations.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(localizations.translate('home_title')),
      ),
      body: Container(
        child: Center(
          child: Text(localizations.translate('home_body')),
        ),
      ),
    );
  }
}
