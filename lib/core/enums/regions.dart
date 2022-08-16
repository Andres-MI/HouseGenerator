import '../../generated/l10n.dart';

enum Regions {
  none,
  theNorth,
  riverlands,
  valeOfArryn,
  ironIsland,
  crownlands,
  westerlands,
  dragonstone,
  theReach,
  stormlands,
  dorne
}

extension RegionExtension on Regions {
  static Map<Regions, String> names = {
    Regions.none: S.current.noneRegion,
    Regions.theNorth: S.current.theNorth,
    Regions.riverlands: S.current.riverlands,
    Regions.valeOfArryn: S.current.valeOfArryn,
    Regions.ironIsland: S.current.ironIslands,
    Regions.crownlands: S.current.crownlands,
    Regions.westerlands: S.current.crownlands,
    Regions.dragonstone: S.current.dragonstone,
    Regions.theReach: S.current.theReach,
    Regions.stormlands: S.current.stormlands,
    Regions.dorne: S.current.dorne
  };

  String? get name => names[this];
}