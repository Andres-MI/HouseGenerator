import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:house_generator/domain/house_repository.dart';
import '../../domain/attributes.dart';
part 'house_generator_state.dart';

class HouseGeneratorCubit extends Cubit<HouseGeneratorState> {
  HouseGeneratorCubit(this._repository) : super(const GeneratorInitial());

  final HouseRepository _repository;

  Future<void> getHouseValues() async {
    emit(const GeneratorLoading());
    Future.delayed(const Duration(milliseconds: 1500));
    final values = _repository.createHouse();
    emit(GeneratorReceived(values));
  }
}
