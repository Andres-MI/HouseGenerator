import 'package:house_generator/domain/attributes.dart';

import '../core/regions.dart';

abstract class HouseRepository {
  Attributes createHouse();
  Attributes createLandedHouse();
  Attributes changeRegion({required Regions region});
}
