import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:house_generator/house_generator/view/historical_events_page.dart';
import 'package:house_generator/house_generator/view/house_details_page.dart';
import 'package:house_generator/house_generator/view/house_generator_page.dart';

import 'generated/l10n.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en', ''),
        Locale('es', ''),
      ],
      initialRoute: '/',
      routes: {
        '/': (context) => const HouseGeneratorPage(),
        '/house_details': (context) => const HouseDetailsPage(),
        '/house_events': (context) => HistoricalEvents()
      },
    );
  }
}

