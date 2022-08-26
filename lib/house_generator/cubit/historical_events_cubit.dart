import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'historical_events_state.dart';

class HistoricalEventsCubit extends Cubit<HistoricalEventsState> {
  HistoricalEventsCubit() : super(HistoricalEventsInitial());
}
