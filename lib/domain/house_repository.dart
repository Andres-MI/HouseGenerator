import 'package:house_generator/domain/attributes.dart';
import 'package:house_generator/domain/historical_entity.dart';
import '../core/enums/house_age.dart';
import '../core/enums/regions.dart';

abstract class HouseRepository {
  Attributes createHouse();

  Attributes createLandedHouse();

  Attributes changeRegion({required Regions region});

  Attributes increaseValue(
      {required Attributes attr, required int attrPosition});

  List<HistoricalEntity> getHistoricalEventResult({required HouseAge age});
}
