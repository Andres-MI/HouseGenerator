import '../../generated/l10n.dart';

enum HistoricalEvents {
  doom,
  defeat,
  catastrophe,
  madness,
  invasionRevolt,
  scandal,
  treachery,
  decline,
  infrastructure,
  ascent,
  favor,
  victory,
  villain,
  glory,
  conquest,
  windfall
}

extension HistoricalExtension on HistoricalEvents {
  static Map<HistoricalEvents, String> names = {
    HistoricalEvents.doom: S.current.doom,
    HistoricalEvents.defeat: S.current.defeat,
    HistoricalEvents.catastrophe: S.current.catastrophe,
    HistoricalEvents.madness: S.current.madness,
    HistoricalEvents.invasionRevolt: S.current.invasionRevolt,
    HistoricalEvents.scandal: S.current.scandal,
    HistoricalEvents.treachery: S.current.treachery,
    HistoricalEvents.decline: S.current.decline,
    HistoricalEvents.infrastructure: S.current.infrastructure,
    HistoricalEvents.ascent: S.current.ascent,
    HistoricalEvents.favor: S.current.favor,
    HistoricalEvents.victory: S.current.victory,
    HistoricalEvents.villain: S.current.villain,
    HistoricalEvents.glory: S.current.glory,
    HistoricalEvents.conquest: S.current.conquest,
    HistoricalEvents.windfall: S.current.windfall,
  };

  String? get name => names[this];

  static Map<HistoricalEvents, String> descriptions = {
    HistoricalEvents.doom: S.current.doomDescription,
    HistoricalEvents.defeat: S.current.defeatDescription,
    HistoricalEvents.catastrophe: S.current.catastropheDescription,
    HistoricalEvents.madness: S.current.madnessDescription,
    HistoricalEvents.invasionRevolt: S.current.invasionRevoltDescription,
    HistoricalEvents.scandal: S.current.scandalDescription,
    HistoricalEvents.treachery: S.current.treacheryDescription,
    HistoricalEvents.decline: S.current.declineDescription,
    HistoricalEvents.infrastructure: S.current.infrastructureDescription,
    HistoricalEvents.ascent: S.current.ascentDescription,
    HistoricalEvents.favor: S.current.favorDescription,
    HistoricalEvents.victory: S.current.victoryDescription,
    HistoricalEvents.villain: S.current.villainDescription,
    HistoricalEvents.glory: S.current.gloryDescription,
    HistoricalEvents.conquest: S.current.conquestDescription,
    HistoricalEvents.windfall: S.current.windfallDescription,
  };

  String? get description => descriptions[this];

  static Map<HistoricalEvents, String> foundingMap = {
    HistoricalEvents.doom: S.current.doomFounding,
    HistoricalEvents.defeat: S.current.defeatFounding,
    HistoricalEvents.catastrophe: S.current.catastropheFounding,
    HistoricalEvents.madness: S.current.madnessFounding,
    HistoricalEvents.invasionRevolt: S.current.invasionRevoltFounding,
    HistoricalEvents.scandal: S.current.scandalFounding,
    HistoricalEvents.treachery: S.current.treacheryFounding,
    HistoricalEvents.decline: S.current.declineFounding,
    HistoricalEvents.infrastructure: S.current.infrastructureFounding,
    HistoricalEvents.ascent: S.current.ascentFounding,
    HistoricalEvents.favor: S.current.favorFounding,
    HistoricalEvents.victory: S.current.victoryFounding,
    HistoricalEvents.villain: S.current.villainFounding,
    HistoricalEvents.glory: S.current.gloryFounding,
    HistoricalEvents.conquest: S.current.conquestFounding,
    HistoricalEvents.windfall: S.current.windfallFounding,
  };

  String? get founding => foundingMap[this];
}
