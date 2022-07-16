import 'dart:math';

import 'package:house_generator/models/house.dart';
import 'package:house_generator/regions.dart';

class HouseData {
  var name = '';
  var numberOfDices = 7;
  var isLandedHouse = false;
  var defense = '0';
  var influence = '0';
  var lands = '0';
  var law = '0';
  var population = '0';
  var power = '0';
  var wealth = '0';

  House createHouse() {
    randomizeValues();
    return House(name, Regions.theNorth, defense, influence, lands, law,
        population, power, wealth);
  }

  void changeHouseType(bool isLandedHouse) {
    this.isLandedHouse = isLandedHouse;
    numberOfDices = 5;
  }
  House changeRegion(Regions region){
    return House(name, region, defense, influence, lands, law,
        population, power, wealth);

  }

  void randomizeValues() {
    defense = getDiceValue().toString();
    influence = getDiceValue().toString();
    lands = getDiceValue().toString();
    law = getDiceValue().toString();
    population = getDiceValue().toString();
    power = getDiceValue().toString();
    wealth = getDiceValue().toString();
  }

  num getDiceValue() {
    Random random = Random();
    int min = 1;
    int max = 7;
    num value = 0;
    for (int i = 0; i < numberOfDices; i++) {
      value = value + (min + random.nextInt(max - min));
    }
    return value;
  }
}
