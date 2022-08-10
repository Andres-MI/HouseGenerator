import 'dart:math';

import 'package:house_generator/data/attributes_model.dart';

import '../core/regions.dart';

abstract class HouseLocalDataSource {
  AttributesModel getHouseValues();

  AttributesModel getLandedHouseValues();

  AttributesModel getRegionValues({required Regions region});

  AttributesModel getEmptyValues();
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
}
