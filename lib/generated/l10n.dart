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

  /// `Doom`
  String get doom {
    return Intl.message(
      'Doom',
      name: 'doom',
      desc: '',
      args: [],
    );
  }

  /// `Defeat`
  String get defeat {
    return Intl.message(
      'Defeat',
      name: 'defeat',
      desc: '',
      args: [],
    );
  }

  /// `Catastrophe`
  String get catastrophe {
    return Intl.message(
      'Catastrophe',
      name: 'catastrophe',
      desc: '',
      args: [],
    );
  }

  /// `Madness`
  String get madness {
    return Intl.message(
      'Madness',
      name: 'madness',
      desc: '',
      args: [],
    );
  }

  /// `Invasion/Revolt`
  String get invasionRevolt {
    return Intl.message(
      'Invasion/Revolt',
      name: 'invasionRevolt',
      desc: '',
      args: [],
    );
  }

  /// `Scandal`
  String get scandal {
    return Intl.message(
      'Scandal',
      name: 'scandal',
      desc: '',
      args: [],
    );
  }

  /// `Treachery`
  String get treachery {
    return Intl.message(
      'Treachery',
      name: 'treachery',
      desc: '',
      args: [],
    );
  }

  /// `Decline`
  String get decline {
    return Intl.message(
      'Decline',
      name: 'decline',
      desc: '',
      args: [],
    );
  }

  /// `Infrastructure`
  String get infrastructure {
    return Intl.message(
      'Infrastructure',
      name: 'infrastructure',
      desc: '',
      args: [],
    );
  }

  /// `Ascent`
  String get ascent {
    return Intl.message(
      'Ascent',
      name: 'ascent',
      desc: '',
      args: [],
    );
  }

  /// `Favor`
  String get favor {
    return Intl.message(
      'Favor',
      name: 'favor',
      desc: '',
      args: [],
    );
  }

  /// `Victory`
  String get victory {
    return Intl.message(
      'Victory',
      name: 'victory',
      desc: '',
      args: [],
    );
  }

  /// `Villain`
  String get villain {
    return Intl.message(
      'Villain',
      name: 'villain',
      desc: '',
      args: [],
    );
  }

  /// `Glory`
  String get glory {
    return Intl.message(
      'Glory',
      name: 'glory',
      desc: '',
      args: [],
    );
  }

  /// `Conquest`
  String get conquest {
    return Intl.message(
      'Conquest',
      name: 'conquest',
      desc: '',
      args: [],
    );
  }

  /// `Windfall`
  String get windfall {
    return Intl.message(
      'Windfall',
      name: 'windfall',
      desc: '',
      args: [],
    );
  }

  /// `Your house suffered a terrible series of mishaps, disasters, and tragedies that nearly erased your family.`
  String get doomDescription {
    return Intl.message(
      'Your house suffered a terrible series of mishaps, disasters, and tragedies that nearly erased your family.',
      name: 'doomDescription',
      desc: '',
      args: [],
    );
  }

  /// `Your family fought a war or smaller conflict but was defeated, losing status, precious resources and influence.`
  String get defeatDescription {
    return Intl.message(
      'Your family fought a war or smaller conflict but was defeated, losing status, precious resources and influence.',
      name: 'defeatDescription',
      desc: '',
      args: [],
    );
  }

  /// `A natural disaster, such as an outbreak of plague, blight, or drought, has diminished your population and ability to control your lands.`
  String get catastropheDescription {
    return Intl.message(
      'A natural disaster, such as an outbreak of plague, blight, or drought, has diminished your population and ability to control your lands.',
      name: 'catastropheDescription',
      desc: '',
      args: [],
    );
  }

  /// `A particular figure suffered from some insanity, producing unpredictable results on your house.`
  String get madnessDescription {
    return Intl.message(
      'A particular figure suffered from some insanity, producing unpredictable results on your house.',
      name: 'madnessDescription',
      desc: '',
      args: [],
    );
  }

  /// `An external invasion marked a period of collapse, destruction, and ruin. It could also stem from a period of inept rule that led to a widespread smallfolk revolt`
  String get invasionRevoltDescription {
    return Intl.message(
      'An external invasion marked a period of collapse, destruction, and ruin. It could also stem from a period of inept rule that led to a widespread smallfolk revolt',
      name: 'invasionRevoltDescription',
      desc: '',
      args: [],
    );
  }

  /// `Your family was involved in some disaster, a scandal that haunts them still. Good options include spawning a bastard, incest, failed conspiracies, and so on.`
  String get scandalDescription {
    return Intl.message(
      'Your family was involved in some disaster, a scandal that haunts them still. Good options include spawning a bastard, incest, failed conspiracies, and so on.',
      name: 'scandalDescription',
      desc: '',
      args: [],
    );
  }

  /// `Either you suffered the results of treachery or you were involved in committing a treacherous act. In either case, the historical event stains your family’s name.`
  String get treacheryDescription {
    return Intl.message(
      'Either you suffered the results of treachery or you were involved in committing a treacherous act. In either case, the historical event stains your family’s name.',
      name: 'treacheryDescription',
      desc: '',
      args: [],
    );
  }

  /// `Whether from a poor marriage, a downturn in trade, or a series of tragic losses in a conflict, your house entered a period of decline.`
  String get declineDescription {
    return Intl.message(
      'Whether from a poor marriage, a downturn in trade, or a series of tragic losses in a conflict, your house entered a period of decline.',
      name: 'declineDescription',
      desc: '',
      args: [],
    );
  }

  /// `Infrastructure describes a period of peace and prosperity, a moment in your house’s history remembered for growth and expansion.`
  String get infrastructureDescription {
    return Intl.message(
      'Infrastructure describes a period of peace and prosperity, a moment in your house’s history remembered for growth and expansion.',
      name: 'infrastructureDescription',
      desc: '',
      args: [],
    );
  }

  /// `An advantageous marriage, a great deed for a liege lord, heroism in a decisive battle or participation on some historical key event improved the fortunes of your house.`
  String get ascentDescription {
    return Intl.message(
      'An advantageous marriage, a great deed for a liege lord, heroism in a decisive battle or participation on some historical key event improved the fortunes of your house.',
      name: 'ascentDescription',
      desc: '',
      args: [],
    );
  }

  /// `Your family gained the favor of the king, their lord, the Faith, or from some other powerful body. As a result, their fortunes and status improved.`
  String get favorDescription {
    return Intl.message(
      'Your family gained the favor of the king, their lord, the Faith, or from some other powerful body. As a result, their fortunes and status improved.',
      name: 'favorDescription',
      desc: '',
      args: [],
    );
  }

  /// `You family achieved an important victory over their enemies. Foes could include ironmen reavers, a King-beyond-the-Wall, or a rival house.`
  String get victoryDescription {
    return Intl.message(
      'You family achieved an important victory over their enemies. Foes could include ironmen reavers, a King-beyond-the-Wall, or a rival house.',
      name: 'victoryDescription',
      desc: '',
      args: [],
    );
  }

  /// `Your family produced a character of unspeakable cruelty and wickedness, a villain whose name is still whispered with dread`
  String get villainDescription {
    return Intl.message(
      'Your family produced a character of unspeakable cruelty and wickedness, a villain whose name is still whispered with dread',
      name: 'villainDescription',
      desc: '',
      args: [],
    );
  }

  /// `Similar to ascent but it focuses on one figure in your family’s past. A military victory, personal achievement, or a great act of heroism advanced your family’s standing`
  String get gloryDescription {
    return Intl.message(
      'Similar to ascent but it focuses on one figure in your family’s past. A military victory, personal achievement, or a great act of heroism advanced your family’s standing',
      name: 'gloryDescription',
      desc: '',
      args: [],
    );
  }

  /// `Your family fought and defeated an enemy, annexing their lands and holdings to their own.`
  String get conquestDescription {
    return Intl.message(
      'Your family fought and defeated an enemy, annexing their lands and holdings to their own.',
      name: 'conquestDescription',
      desc: '',
      args: [],
    );
  }

  /// `A boon, a blessing catapulted your family into fame (or infamy). Could be an advantageous marriage, a gift from the king, discovery of new resources on one’s lands, etc`
  String get windfallDescription {
    return Intl.message(
      'A boon, a blessing catapulted your family into fame (or infamy). Could be an advantageous marriage, a gift from the king, discovery of new resources on one’s lands, etc',
      name: 'windfallDescription',
      desc: '',
      args: [],
    );
  }

  /// `Your family might have clawed their way out of the ashes of a destroyed house, maybe being loyal retainers or even just smallfolk that seized the old lord’s holdings.`
  String get doomFounding {
    return Intl.message(
      'Your family might have clawed their way out of the ashes of a destroyed house, maybe being loyal retainers or even just smallfolk that seized the old lord’s holdings.',
      name: 'doomFounding',
      desc: '',
      args: [],
    );
  }

  /// `Your family might have been swallowed up by another house and forced to marry into a lesser branch until your original bloodline became all but extinct.`
  String get defeatFounding {
    return Intl.message(
      'Your family might have been swallowed up by another house and forced to marry into a lesser branch until your original bloodline became all but extinct.',
      name: 'defeatFounding',
      desc: '',
      args: [],
    );
  }

  /// `Your family may have gained their status through dubious or tragic means, perhaps replacing the previous lords who were wiped out during a catastrophe or were a lesser branch that rose in station as they inherited the holdings of their kin.`
  String get catastropheFounding {
    return Intl.message(
      'Your family may have gained their status through dubious or tragic means, perhaps replacing the previous lords who were wiped out during a catastrophe or were a lesser branch that rose in station as they inherited the holdings of their kin.',
      name: 'catastropheFounding',
      desc: '',
      args: [],
    );
  }

  /// `Your family was raised by an insane lord or king as appropriate to the period of your first founding.`
  String get madnessFounding {
    return Intl.message(
      'Your family was raised by an insane lord or king as appropriate to the period of your first founding.',
      name: 'madnessFounding',
      desc: '',
      args: [],
    );
  }

  /// `Your house was born from the strife of an invasion/revolt and came to power in the aftermath.`
  String get invasionRevoltFounding {
    return Intl.message(
      'Your house was born from the strife of an invasion/revolt and came to power in the aftermath.',
      name: 'invasionRevoltFounding',
      desc: '',
      args: [],
    );
  }

  /// `Your family was created as a way of covering up a scandal or a crime, like spawning a bastard, incest, failed conspiracies, and so on`
  String get scandalFounding {
    return Intl.message(
      'Your family was created as a way of covering up a scandal or a crime, like spawning a bastard, incest, failed conspiracies, and so on',
      name: 'scandalFounding',
      desc: '',
      args: [],
    );
  }

  /// `Your family gained its status by means of some dark deed, possibly betraying another lord or noble.`
  String get treacheryFounding {
    return Intl.message(
      'Your family gained its status by means of some dark deed, possibly betraying another lord or noble.',
      name: 'treacheryFounding',
      desc: '',
      args: [],
    );
  }

  /// ` Your house was probably born from a poor marriage —a desperate lord wedding his daughter to a merchant prince— or of a major branch becoming extinct, leaving the holdings to a lesser branch to rule.`
  String get declineFounding {
    return Intl.message(
      ' Your house was probably born from a poor marriage —a desperate lord wedding his daughter to a merchant prince— or of a major branch becoming extinct, leaving the holdings to a lesser branch to rule.',
      name: 'declineFounding',
      desc: '',
      args: [],
    );
  }

  /// `Your house was born during a period of expansion under your lord or king’s rule.`
  String get infrastructureFounding {
    return Intl.message(
      'Your house was born during a period of expansion under your lord or king’s rule.',
      name: 'infrastructureFounding',
      desc: '',
      args: [],
    );
  }

  /// `Your house was raised from the smallfolk by marriage or through some great act that warranted your elevation to a noble house.`
  String get ascentFounding {
    return Intl.message(
      'Your house was raised from the smallfolk by marriage or through some great act that warranted your elevation to a noble house.',
      name: 'ascentFounding',
      desc: '',
      args: [],
    );
  }

  /// `The king likely raised your family to nobility after gaining his, your lord or the Faith's favor.`
  String get favorFounding {
    return Intl.message(
      'The king likely raised your family to nobility after gaining his, your lord or the Faith\'s favor.',
      name: 'favorFounding',
      desc: '',
      args: [],
    );
  }

  /// `An important victory over their enemies was so great that your family was raised to nobility`
  String get victoryFounding {
    return Intl.message(
      'An important victory over their enemies was so great that your family was raised to nobility',
      name: 'victoryFounding',
      desc: '',
      args: [],
    );
  }

  /// `Your family won its position by dint of evil, possibly murdering a rival and seizing his lands or birthright.`
  String get villainFounding {
    return Intl.message(
      'Your family won its position by dint of evil, possibly murdering a rival and seizing his lands or birthright.',
      name: 'villainFounding',
      desc: '',
      args: [],
    );
  }

  /// `Your house was formed as a reward for the great acts of their founder after a military victory, personal achievement,or act of heroism.`
  String get gloryFounding {
    return Intl.message(
      'Your house was formed as a reward for the great acts of their founder after a military victory, personal achievement,or act of heroism.',
      name: 'gloryFounding',
      desc: '',
      args: [],
    );
  }

  /// `Your family gained noble status by defeating another lord or landed knight.`
  String get conquestFounding {
    return Intl.message(
      'Your family gained noble status by defeating another lord or landed knight.',
      name: 'conquestFounding',
      desc: '',
      args: [],
    );
  }

  /// `Your family won its lands by attaining a victory at a tournament, performing a great act, or something else of the like.`
  String get windfallFounding {
    return Intl.message(
      'Your family won its lands by attaining a victory at a tournament, performing a great act, or something else of the like.',
      name: 'windfallFounding',
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
