import 'package:house_generator/domain/attributes.dart';
import '../core/regions.dart';

class House {
  final String name;
  final Regions region;
  final Attributes attributes;
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
