// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Hello World!`
  String get helloWorld {
    return Intl.message(
      'Hello World!',
      name: 'helloWorld',
      desc: 'The conventional newborn programmer greeting',
      args: [],
    );
  }

  /// `House Generator`
  String get generatorTitle {
    return Intl.message(
      'House Generator',
      name: 'generatorTitle',
      desc: '',
      args: [],
    );
  }

  /// `House name`
  String get nameHint {
    return Intl.message(
      'House name',
      name: 'nameHint',
      desc: '',
      args: [],
    );
  }

  /// `Generate new house`
  String get generateText {
    return Intl.message(
      'Generate new house',
      name: 'generateText',
      desc: '',
      args: [],
    );
  }

  /// `Lands`
  String get lands {
    return Intl.message(
      'Lands',
      name: 'lands',
      desc: '',
      args: [],
    );
  }

  /// `Defense`
  String get defense {
    return Intl.message(
      'Defense',
      name: 'defense',
      desc: '',
      args: [],
    );
  }

  /// `Influence`
  String get influence {
    return Intl.message(
      'Influence',
      name: 'influence',
      desc: '',
      args: [],
    );
  }

  /// `Law`
  String get law {
    return Intl.message(
      'Law',
      name: 'law',
      desc: '',
      args: [],
    );
  }

  /// `Population`
  String get population {
    return Intl.message(
      'Population',
      name: 'population',
      desc: '',
      args: [],
    );
  }

  /// `Power`
  String get power {
    return Intl.message(
      'Power',
      name: 'power',
      desc: '',
      args: [],
    );
  }

  /// `Wealth`
  String get wealth {
    return Intl.message(
      'Wealth',
      name: 'wealth',
      desc: '',
      args: [],
    );
  }

  /// `Select a region`
  String get noneRegion {
    return Intl.message(
      'Select a region',
      name: 'noneRegion',
      desc: '',
      args: [],
    );
  }

  /// `The North`
  String get theNorth {
    return Intl.message(
      'The North',
      name: 'theNorth',
      desc: '',
      args: [],
    );
  }

  /// `The Riverlands`
  String get riverlands {
    return Intl.message(
      'The Riverlands',
      name: 'riverlands',
      desc: '',
      args: [],
    );
  }

  /// `The Vale of Arryn`
  String get valeOfArryn {
    return Intl.message(
      'The Vale of Arryn',
      name: 'valeOfArryn',
      desc: '',
      args: [],
    );
  }

  /// `The Iron Islands`
  String get ironIslands {
    return Intl.message(
      'The Iron Islands',
      name: 'ironIslands',
      desc: '',
      args: [],
    );
  }

  /// `King's Landing`
  String get crownlands {
    return Intl.message(
      'King\'s Landing',
      name: 'crownlands',
      desc: '',
      args: [],
    );
  }

  /// `The Westerlands`
  String get westerlands {
    return Intl.message(
      'The Westerlands',
      name: 'westerlands',
      desc: '',
      args: [],
    );
  }

  /// `DragonStone`
  String get dragonstone {
    return Intl.message(
      'DragonStone',
      name: 'dragonstone',
      desc: '',
      args: [],
    );
  }

  /// `The Reach`
  String get theReach {
    return Intl.message(
      'The Reach',
      name: 'theReach',
      desc: '',
      args: [],
    );
  }

  /// `The Stormlands`
  String get stormlands {
    return Intl.message(
      'The Stormlands',
      name: 'stormlands',
      desc: '',
      args: [],
    );
  }

  /// `Dorne`
  String get dorne {
    return Intl.message(
      'Dorne',
      name: 'dorne',
      desc: '',
      args: [],
    );
  }

  /// `House History`
  String get houseHistory {
    return Intl.message(
      'House History',
      name: 'houseHistory',
      desc: '',
      args: [],
    );
  }

  /// `First founding`
  String get firstFounding {
    return Intl.message(
      'First founding',
      name: 'firstFounding',
      desc: '',
      args: [],
    );
  }

  /// `Ancient`
  String get ancient {
    return Intl.message(
      'Ancient',
      name: 'ancient',
      desc: '',
      args: [],
    );
  }

  /// `Very Old`
  String get veryOld {
    return Intl.message(
      'Very Old',
      name: 'veryOld',
      desc: '',
      args: [],
    );
  }

  /// `Old`
  String get old {
    return Intl.message(
      'Old',
      name: 'old',
      desc: '',
      args: [],
    );
  }

  /// `Established`
  String get established {
    return Intl.message(
      'Established',
      name: 'established',
      desc: '',
      args: [],
    );
  }

  /// `Recent`
  String get recent {
    return Intl.message(
      'Recent',
      name: 'recent',
      desc: '',
      args: [],
    );
  }

  /// `New`
  String get newHouse {
    return Intl.message(
      'New',
      name: 'newHouse',
      desc: '',
      args: [],
    );
  }

  /// `Do you want to increase this attribute in 1D6?`
  String get increaseText {
    return Intl.message(
      'Do you want to increase this attribute in 1D6?',
      name: 'increaseText',
      desc: '',
      args: [],
    );
  }

  /// `Yes`
  String get yes {
    return Intl.message(
      'Yes',
      name: 'yes',
      desc: '',
      args: [],
    );
  }

  /// `No`
  String get no {
    return Intl.message(
      'No',
      name: 'no',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'es'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
