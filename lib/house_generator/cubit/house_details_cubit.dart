import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/attributes.dart';
import '../../domain/house_repository.dart';

part 'house_details_state.dart';

class HouseDetailsCubit extends Cubit<HouseDetailsState> {
  HouseDetailsCubit(this._repository) : super(HouseDetailsInitial());

  final HouseRepository _repository;

  Future<void> increaseValue(
      {required Attributes attr, required int attrPosition}) async {
    final values =
        _repository.increaseValue(attr: attr, attrPosition: attrPosition);
    emit(DetailsChanged(attributes: values));
  }
}
