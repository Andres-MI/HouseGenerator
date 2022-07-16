import '../regions.dart';

class House {
  late final String name;
  late final Regions region;
  late String defense;
  late String influence;
  late String lands;
  late String law;
  late String population;
  late String power;
  late String wealth;

  House(
      this.name,
      this.region,
      this.defense,
      this.influence,
      this.lands,
      this.law,
      this.population,
      this.power,
      this.wealth);
}

