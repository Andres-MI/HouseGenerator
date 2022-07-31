import '../core/attributes_map.dart';
import '../core/regions.dart';

class House {
  final String name;
  final Regions region;
  final AttributesMap attributes;
  final bool isLandedHouse;
  final String? lordHouse;

  House({
    required this.name,
    required this.region,
    required this.attributes,
    required this.isLandedHouse,
    this.lordHouse,
  });
}
