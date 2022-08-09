import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:house_generator/domain/house_repository.dart';
import '../../core/regions.dart';
import '../../domain/attributes.dart';
part 'house_generator_state.dart';

class HouseGeneratorCubit extends Cubit<HouseGeneratorState> {
  HouseGeneratorCubit(this._repository) : super(const GeneratorInitial());

  final HouseRepository _repository;

  Future<void> getHouseValues() async {
    try {
      emit(const GeneratorLoading());
      Future.delayed(const Duration(milliseconds: 1500));
      final values = _repository.createHouse();
      emit(GeneratorReceived(values));
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  Future<void> changeRegion({required Regions region}) async {
    try {
      final values = _repository.changeRegion(region: region);
      emit(GeneratorReceived(values));
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}