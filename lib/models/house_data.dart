import 'dart:math';

import 'package:house_generator/models/house.dart';
import 'package:house_generator/regions.dart';

class HouseData {
  var name = '';
  var numberOfDices = 7;
  var isLandedHouse = false;
  Regions region = Regions.theNorth;
  int defense = 0,
      influence = 0,
      lands = 0,
      law = 0,
      population = 0,
      power = 0,
      wealth = 0;
  int defenseBonus = 0,
      influenceBonus = 0,
      landBonus = 0,
      lawBonus = 0,
      populationBonus = 0,
      powerBonus = 0,
      wealthBonus = 0;

  House get house {
    return House(
        name,
        region,
        (defense + defenseBonus).toString(),
        (influence + influenceBonus).toString(),
        (lands + landBonus).toString(),
        (law + lawBonus).toString(),
        (population + populationBonus).toString(),
        (power + powerBonus).toString(),
        (wealth + wealthBonus).toString());
  }

  House createHouse() {
    randomizeValues();
    return house;
  }

  void changeHouseType(bool isLandedHouse) {
    this.isLandedHouse = isLandedHouse;
    numberOfDices = 5;
  }

  House changeRegion(Regions region) {
    this.region = region;
    changeRegionValues(region);
    return house;
  }

  void randomizeValues() {
    defense = getDiceValue();
    influence = getDiceValue();
    lands = getDiceValue();
    law = getDiceValue();
    population = getDiceValue();
    power = getDiceValue();
    wealth = getDiceValue();
  }

  int getDiceValue() {
    Random random = Random();
    int min = 1;
    int max = 7;
    num value = 0;
    for (int i = 0; i < numberOfDices; i++) {
      value = value + (min + random.nextInt(max - min));
    }
    return value.toInt();
  }

  void changeRegionValues(Regions region) {
    switch (region) {
      case Regions.theNorth:
        defenseBonus = 5;
        influenceBonus = 10;
        landBonus = 20;
        lawBonus = -10;
        populationBonus = -5;
        powerBonus = -5;
        wealthBonus = -5;
        break;
      case Regions.riverlands:
        defenseBonus = -5;
        influenceBonus = -5;
        landBonus = 5;
        lawBonus = 0;
        populationBonus = 10;
        powerBonus = 0;
        wealthBonus = 5;
        break;
      case Regions.valeOfArryn:
        defenseBonus = 20;
        influenceBonus = 10;
        landBonus = -5;
        lawBonus = -10;
        populationBonus = -5;
        powerBonus = 0;
        wealthBonus = 0;
        break;
      case Regions.ironIsland:
        defenseBonus = 10;
        influenceBonus = -5;
        landBonus = -5;
        lawBonus = 0;
        populationBonus = 0;
        powerBonus = 10;
        wealthBonus = 0;
        break;
      case Regions.crownlands:
        defenseBonus = 5;
        influenceBonus = -5;
        landBonus = -5;
        lawBonus = 20;
        populationBonus = 5;
        powerBonus = -5;
        wealthBonus = -5;
        break;
      case Regions.westerlands:
        defenseBonus = -5;
        influenceBonus = 10;
        landBonus = -5;
        lawBonus = -5;
        populationBonus = -5;
        powerBonus = 0;
        wealthBonus = 20;
        break;
      case Regions.dragonstone:
        defenseBonus = 20;
        influenceBonus = -5;
        landBonus = -5;
        lawBonus = 5;
        populationBonus = 0;
        powerBonus = 0;
        wealthBonus = -5;
        break;
      case Regions.theReach:
        defenseBonus = -5;
        influenceBonus = 10;
        landBonus = 0;
        lawBonus = -5;
        populationBonus = 5;
        powerBonus = 0;
        wealthBonus = 5;
        break;
      case Regions.stormlands:
        defenseBonus = 5;
        influenceBonus = 0;
        landBonus = -5;
        lawBonus = 10;
        populationBonus = -5;
        powerBonus = 5;
        wealthBonus = 0;
        break;
      case Regions.dorne:
        defenseBonus = 0;
        influenceBonus = -5;
        landBonus = 10;
        lawBonus = -5;
        populationBonus = 0;
        powerBonus = 10;
        wealthBonus = 0;
        break;
    }
  }
}
