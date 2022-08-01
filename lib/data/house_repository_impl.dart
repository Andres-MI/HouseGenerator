import 'dart:math';

import 'package:house_generator/data/house_local_data_source.dart';

import '../domain/house.dart';
import '../domain/house_repository.dart';

class HouseRepositoryImpl implements HouseRepository{

  final HouseLocalDataSource localDataSource;

  HouseRepositoryImpl({required this.localDataSource});

  @override
  House createHouse() {
    // TODO: implement createHouse
    throw UnimplementedError();
  }

  @override
  House createLandedHouse() {
    // TODO: implement createLandedHouse
    throw UnimplementedError();
  }

  int getDiceValue({int numberOfDices = 7}) {
    Random random = Random();
    int min = 1;
    int max = 7;
    num value = 0;
    for (int i = 0; i < numberOfDices; i++) {
      value = value + (min + random.nextInt(max - min));
    }
    return value.toInt();
  }

  @override
  changeRegion() {
    // TODO: implement changeRegion
    throw UnimplementedError();
  }



}