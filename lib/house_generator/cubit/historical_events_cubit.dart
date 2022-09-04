import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:house_generator/core/enums/house_age.dart';

import '../../domain/historical_entity.dart';
import '../../domain/house_repository.dart';

part 'historical_events_state.dart';

class HistoricalEventsCubit extends Cubit<HistoricalEventsState> {
  HistoricalEventsCubit(this._repository) : super(HistoricalEventsInitial());

  final HouseRepository _repository;

  Future<void> getEventList({required HouseAge houseAge}) async {
    try {
      final values = _repository.getHistoricalEventResult(age: houseAge);
      emit(HistoricalEventsLoaded(eventList: values));
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
