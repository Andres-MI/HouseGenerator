import 'package:house_generator/data/house_local_data_source.dart';
import 'package:house_generator/domain/attributes.dart';

import '../core/regions.dart';
import '../domain/house_repository.dart';

class HouseRepositoryImpl implements HouseRepository {
  final HouseLocalDataSource localDataSource;

  Attributes? attributes;
  Attributes? regionAttributes;

  HouseRepositoryImpl({required this.localDataSource});

  @override
  Attributes createHouse() {
    attributes = localDataSource.getHouseValues();
    return attributes! + (regionAttributes ?? localDataSource.getEmptyValues());
  }

  @override
  Attributes createLandedHouse() {
    attributes = localDataSource.getLandedHouseValues();
    return attributes! + (regionAttributes ?? localDataSource.getEmptyValues());
  }

  @override
  Attributes changeRegion({required Regions region}) {
    regionAttributes = localDataSource.getRegionValues(region: region);
    return (attributes ?? localDataSource.getEmptyValues()) + regionAttributes!;
  }
}
