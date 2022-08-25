import 'dart:math';

import 'package:house_generator/core/enums/historical_events.dart';
import 'package:house_generator/data/attributes_model.dart';

import '../core/enums/regions.dart';

abstract class HouseLocalDataSource {
  AttributesModel getHouseValues();

  AttributesModel getLandedHouseValues();

  AttributesModel getRegionValues({required Regions region});

  int increaseValues({required int value});

  AttributesModel getEmptyValues();

  AttributesModel getHistoricalResult({required HistoricalEvents event});
}

class HouseLocalDataSourceImpl implements HouseLocalDataSource {
  @override
  AttributesModel getHouseValues() {
    return AttributesModel(
        lands: getDiceValue(),
        defense: getDiceValue(),
        influence: getDiceValue(),
        law: getDiceValue(),
        population: getDiceValue(),
        power: getDiceValue(),
        wealth: getDiceValue());
  }

  @override
  AttributesModel getLandedHouseValues() {
    int numberOfDices = 5;
    return AttributesModel(
        lands: getDiceValue(numberOfDices: numberOfDices),
        defense: getDiceValue(numberOfDices: numberOfDices),
        influence: getDiceValue(numberOfDices: numberOfDices),
        law: getDiceValue(numberOfDices: numberOfDices),
        population: getDiceValue(numberOfDices: numberOfDices),
        power: getDiceValue(numberOfDices: numberOfDices),
        wealth: getDiceValue(numberOfDices: numberOfDices));
  }

  int getDiceValue({int numberOfDices = 7}) {
    Random random = Random();
    int min = 1;
    int max = 7;
    num value = 0;
    for (int i = 0; i < numberOfDices; i++) {
      value = value + (min + random.nextInt(max - min));
    }
    return value.toInt();
  }

  @override
  AttributesModel getRegionValues({required Regions region}) {
    switch (region) {
      case Regions.theNorth:
        return AttributesModel(
            region: region,
            lands: 20,
            defense: 5,
            influence: 10,
            law: -10,
            population: -5,
            power: -5,
            wealth: -5);
      case Regions.riverlands:
        return AttributesModel(
            region: region,
            lands: 5,
            defense: -5,
            influence: -5,
            law: 0,
            population: 10,
            power: 0,
            wealth: 5);
      case Regions.valeOfArryn:
        return AttributesModel(
            region: region,
            lands: -5,
            defense: 20,
            influence: 10,
            law: -10,
            population: -5,
            power: 0,
            wealth: 0);
      case Regions.ironIsland:
        return AttributesModel(
            region: region,
            lands: -5,
            defense: 10,
            influence: -5,
            law: 0,
            population: 0,
            power: 10,
            wealth: 0);
      case Regions.crownlands:
        return AttributesModel(
            region: region,
            lands: -5,
            defense: 5,
            influence: -5,
            law: 20,
            population: 5,
            power: -5,
            wealth: -5);
      case Regions.westerlands:
        return AttributesModel(
            region: region,
            lands: -5,
            defense: -5,
            influence: 10,
            law: -5,
            population: -5,
            power: 0,
            wealth: 20);
      case Regions.dragonstone:
        return AttributesModel(
            region: region,
            lands: -5,
            defense: 20,
            influence: -5,
            law: 5,
            population: 0,
            power: 0,
            wealth: -5);
      case Regions.theReach:
        return AttributesModel(
            region: region,
            lands: 0,
            defense: -5,
            influence: 10,
            law: -5,
            population: 5,
            power: 0,
            wealth: 5);
      case Regions.stormlands:
        return AttributesModel(
            region: region,
            lands: -5,
            defense: 5,
            influence: 0,
            law: 10,
            population: -5,
            power: 5,
            wealth: 0);
      case Regions.dorne:
        return AttributesModel(
            region: region,
            lands: 10,
            defense: 0,
            influence: -5,
            law: -5,
            population: 0,
            power: 10,
            wealth: 0);
      case Regions.none:
        return AttributesModel(
            region: region,
            lands: 0,
            defense: 0,
            influence: 0,
            law: 0,
            population: 0,
            power: 0,
            wealth: 0);
    }
  }

  @override
  AttributesModel getEmptyValues() {
    return AttributesModel(
        region: Regions.none,
        lands: 0,
        defense: 0,
        influence: 0,
        law: 0,
        population: 0,
        power: 0,
        wealth: 0);
  }

  @override
  int increaseValues({required int value}) {
    return value + getDiceValue(numberOfDices: 1);
  }

  @override
  AttributesModel getHistoricalResult({required HistoricalEvents event}) {
    switch (event) {
      case HistoricalEvents.doom:
        return AttributesModel(
            lands: -(getDiceValue(numberOfDices: 2)),
            defense: -(getDiceValue(numberOfDices: 2)),
            influence: -(getDiceValue(numberOfDices: 2)),
            law: -(getDiceValue(numberOfDices: 2)),
            population: -(getDiceValue(numberOfDices: 2)),
            power: -(getDiceValue(numberOfDices: 2)),
            wealth: -(getDiceValue(numberOfDices: 2)));
      case HistoricalEvents.defeat:
        return AttributesModel(
            lands: -(getDiceValue(numberOfDices: 1)),
            defense: -(getDiceValue(numberOfDices: 1)),
            influence: -(getDiceValue(numberOfDices: 1)),
            law: 0,
            population: -(getDiceValue(numberOfDices: 1)),
            power: -(getDiceValue(numberOfDices: 1)),
            wealth: -(getDiceValue(numberOfDices: 1)));
      case HistoricalEvents.catastrophe:
        return AttributesModel(
            lands: 0,
            defense: 0,
            influence: 0,
            law: -(getDiceValue(numberOfDices: 1)),
            population: -(getDiceValue(numberOfDices: 1)),
            power: -(getDiceValue(numberOfDices: 1)),
            wealth: -(getDiceValue(numberOfDices: 1)));
      case HistoricalEvents.madness:
        return AttributesModel(
            lands: 6 - (getDiceValue(numberOfDices: 2)),
            defense: 6 - (getDiceValue(numberOfDices: 2)),
            influence: 6 - (getDiceValue(numberOfDices: 2)),
            law: 6 - (getDiceValue(numberOfDices: 2)),
            population: 6 - (getDiceValue(numberOfDices: 2)),
            power: 6 - (getDiceValue(numberOfDices: 2)),
            wealth: 6 - (getDiceValue(numberOfDices: 2)));
      case HistoricalEvents.invasionRevolt:
        return AttributesModel(
            lands: 0,
            defense: 0,
            influence: 0,
            law: -(getDiceValue(numberOfDices: 2)),
            population: -(getDiceValue(numberOfDices: 1)),
            power: -(getDiceValue(numberOfDices: 1)),
            wealth: -(getDiceValue(numberOfDices: 1)));
      case HistoricalEvents.scandal:
        return AttributesModel(
            lands: -(getDiceValue(numberOfDices: 1)),
            defense: 0,
            influence: -(getDiceValue(numberOfDices: 1)),
            law: 0,
            population: 0,
            power: -(getDiceValue(numberOfDices: 1)),
            wealth: 0);
      case HistoricalEvents.treachery:
        return AttributesModel(
            lands: 0,
            defense: 0,
            influence: -(getDiceValue(numberOfDices: 1)),
            law: -(getDiceValue(numberOfDices: 1)),
            population: 0,
            power: (getDiceValue(numberOfDices: 1)),
            wealth: 0);
      case HistoricalEvents.decline:
        return AttributesModel(
            lands: -(getDiceValue(numberOfDices: 1)),
            defense: 0,
            influence: -(getDiceValue(numberOfDices: 1)),
            law: 0,
            population: 0,
            power: -(getDiceValue(numberOfDices: 1)),
            wealth: -(getDiceValue(numberOfDices: 1)));
      case HistoricalEvents.ascent:
        return AttributesModel(
            lands: 0,
            defense: (getDiceValue(numberOfDices: 1)),
            influence: (getDiceValue(numberOfDices: 1)),
            law: 0,
            population: 0,
            power: (getDiceValue(numberOfDices: 1)),
            wealth: (getDiceValue(numberOfDices: 1)));
      case HistoricalEvents.favor:
        return AttributesModel(
            lands: 0,
            defense: (getDiceValue(numberOfDices: 1)),
            influence: (getDiceValue(numberOfDices: 1)),
            law: (getDiceValue(numberOfDices: 1)),
            population: 0,
            power: (getDiceValue(numberOfDices: 1)),
            wealth: 0);
      case HistoricalEvents.victory:
        return AttributesModel(
            lands: 0,
            defense: (getDiceValue(numberOfDices: 1)),
            influence: (getDiceValue(numberOfDices: 1)),
            law: 0,
            population: 0,
            power: (getDiceValue(numberOfDices: 1)),
            wealth: 0);
      case HistoricalEvents.villain:
        return AttributesModel(
            lands: 0,
            defense: 0,
            influence: (getDiceValue(numberOfDices: 1)),
            law: -(getDiceValue(numberOfDices: 1)),
            population: -(getDiceValue(numberOfDices: 1)),
            power: (getDiceValue(numberOfDices: 1)),
            wealth: 0);
      case HistoricalEvents.glory:
        return AttributesModel(
            lands: 0,
            defense: (getDiceValue(numberOfDices: 1)),
            influence: (getDiceValue(numberOfDices: 1)),
            law: (getDiceValue(numberOfDices: 1)),
            population: 0,
            power: (getDiceValue(numberOfDices: 1)),
            wealth: 0);
      case HistoricalEvents.conquest:
        return AttributesModel(
            lands: (getDiceValue(numberOfDices: 1)),
            defense: -(getDiceValue(numberOfDices: 1)),
            influence: (getDiceValue(numberOfDices: 1)),
            law: -(getDiceValue(numberOfDices: 1)),
            population: (getDiceValue(numberOfDices: 1)),
            power: 0,
            wealth: (getDiceValue(numberOfDices: 1)));
      case HistoricalEvents.windfall:
        return AttributesModel(
            lands: (getDiceValue(numberOfDices: 1)),
            defense: (getDiceValue(numberOfDices: 1)),
            influence: (getDiceValue(numberOfDices: 2)),
            law: (getDiceValue(numberOfDices: 1)),
            population: (getDiceValue(numberOfDices: 1)),
            power: (getDiceValue(numberOfDices: 2)),
            wealth: (getDiceValue(numberOfDices: 2)));
      default:
        throw Exception();
    }
  }
}
