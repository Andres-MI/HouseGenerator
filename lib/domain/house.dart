import 'package:house_generator/core/house_age.dart';
import 'package:house_generator/domain/attributes.dart';
import '../core/regions.dart';

class House {
  final String name;
  final Regions region;
  final HouseAge? age;
  final Attributes attributes;
  final bool isLandedHouse;
  final String? lordHouse;

  House({
    required this.name,
    required this.region,
    required this.attributes,
    required this.isLandedHouse,
    this.age,
    this.lordHouse,
  });

  House copyWith({String? name, Attributes? attributes, HouseAge? age}) {
    return House(
        name: name ?? this.name,
        region: region,
        attributes: attributes ?? this.attributes,
        age: age ?? this.age,
        isLandedHouse: isLandedHouse);
  }
}
