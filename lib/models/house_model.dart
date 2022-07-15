class HouseModel {
  late final String name;
  late final Regions region;
}

enum Regions {theNorth, riverlands, ironIsland, valeOfArryn}

extension RegionExtension on Regions {

  static const names = {
    Regions.theNorth: 'The North',
    Regions.riverlands: 'Riverlands'
  };

  String? get name => names[this];
}
