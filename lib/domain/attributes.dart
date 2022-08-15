import '../core/regions.dart';

class Attributes {
  final int lands, defense, influence, law, population, power, wealth;
  final Regions? region;

  Attributes(
      {this.region,
      required this.lands,
      required this.defense,
      required this.influence,
      required this.law,
      required this.population,
      required this.power,
      required this.wealth});

  Attributes copyWith(
      {int? lands,
      int? defense,
      int? influence,
      int? law,
      int? population,
      int? power,
      int? wealth}) {
    return Attributes(
        lands: lands ?? this.lands,
        defense: defense ?? this.defense,
        influence: influence ?? this.influence,
        law: law ?? this.law,
        population: population ?? this.population,
        power: power ?? this.power,
        wealth: wealth ?? this.wealth);
  }

  Attributes operator +(Attributes other) {
    return Attributes(
      region: (other.region ?? region ?? Regions.none),
      lands: lands + other.lands,
      defense: defense + other.defense,
      influence: influence + other.influence,
      law: law + other.law,
      population: population + other.population,
      power: power + other.population,
      wealth: wealth + other.wealth,
    );
  }
}
