import 'package:house_generator/data/house_local_data_source.dart';
import 'package:house_generator/domain/attributes.dart';

import '../core/regions.dart';
import '../domain/house_repository.dart';

class HouseRepositoryImpl implements HouseRepository {
  final HouseLocalDataSource localDataSource;

  HouseRepositoryImpl({required this.localDataSource});

  @override
  Attributes createHouse() {
    return localDataSource.getHouseValues();
  }

  @override
  Attributes createLandedHouse() {
    return localDataSource.getLandedHouseValues();
  }

  @override
  Attributes changeRegion({required Regions region}) {
    return localDataSource.getRegionValues(region: region);
  }
}
