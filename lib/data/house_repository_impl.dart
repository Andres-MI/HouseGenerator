import 'dart:math';

import 'package:house_generator/core/enums/house_age.dart';
import 'package:house_generator/data/house_local_data_source.dart';
import 'package:house_generator/domain/attributes.dart';

import '../core/enums/regions.dart';
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

  @override
  Attributes increaseValue(
      {required Attributes attr, required int attrPosition}) {
    switch (attrPosition) {
      case 0:
        return attr.copyWith(
            lands: localDataSource.increaseValues(value: attr.lands));
      case 1:
        return attr.copyWith(
            defense: localDataSource.increaseValues(value: attr.defense));
      case 2:
        return attr.copyWith(
            influence: localDataSource.increaseValues(value: attr.influence));
      case 3:
        return attr.copyWith(
            law: localDataSource.increaseValues(value: attr.law));
      case 4:
        return attr.copyWith(
            population: localDataSource.increaseValues(value: attr.population));
      case 5:
        return attr.copyWith(
            power: localDataSource.increaseValues(value: attr.power));
      case 6:
        return attr.copyWith(
            wealth: localDataSource.increaseValues(value: attr.wealth));
      default:
        return attr;
    }
  }

  @override
  Attributes getHistoricalEventResult({required HouseAge age}) {
    int numberOfEvents = Random().nextInt(7);
    switch (age) {
      case HouseAge.ancient:
        numberOfEvents = numberOfEvents + 3;
        break;
      case HouseAge.veryOld:
        numberOfEvents = numberOfEvents + 2;
        break;
      case HouseAge.established:
        numberOfEvents = numberOfEvents;
        break;
      case HouseAge.recent:
        numberOfEvents = (numberOfEvents - 1) > 0 ? numberOfEvents - 1 : 1;
        break;
      case HouseAge.newHouse:
        numberOfEvents = (numberOfEvents - 2) > 0 ? numberOfEvents - 2 : 1;
        break;
    }
    throw Exception('Return Incomplete');
  }
}
