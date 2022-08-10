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
  static const names = {
    Regions.none: 'Selecciona una región',
    Regions.theNorth: 'El Norte',
    Regions.riverlands: 'Las Tierras de los Ríos',
    Regions.valeOfArryn: 'El Valle de Arryn',
    Regions.ironIsland: 'Las Islas del Hierro',
    Regions.crownlands: 'Desembarco del Rey',
    Regions.westerlands: 'Las Tierras del Oeste',
    Regions.dragonstone: 'Rocadragón',
    Regions.theReach: 'El Dominio',
    Regions.stormlands: 'Las Tierras de la Tormenta',
    Regions.dorne: 'Dorne'
  };

  String? get name => names[this];
}