import 'package:flutter_bloc/flutter_bloc.dart';

class HouseCubit extends Cubit<int> {
  HouseCubit(int initialState) : super(initialState);

  void increment() => emit(state + 1);
  void decrement() => emit(state - 1);
}
