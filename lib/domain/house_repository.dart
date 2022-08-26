import 'package:house_generator/domain/attributes.dart';
import '../core/enums/house_age.dart';
import '../core/enums/regions.dart';

abstract class HouseRepository {
  Attributes createHouse();

  Attributes createLandedHouse();

  Attributes changeRegion({required Regions region});

  Attributes increaseValue(
      {required Attributes attr, required int attrPosition});

  Attributes getHistoricalEventResult({required HouseAge age});
}
