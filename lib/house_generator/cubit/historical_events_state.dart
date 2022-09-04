part of 'historical_events_cubit.dart';

abstract class HistoricalEventsState extends Equatable {
  const HistoricalEventsState();
}

class HistoricalEventsInitial extends HistoricalEventsState {
  @override
  List<Object> get props => [];
}

class HistoricalEventsLoaded extends HistoricalEventsState {
  final List<HistoricalEntity> eventList;

  const HistoricalEventsLoaded({required this.eventList});

  @override
  List<Object> get props => [eventList];
}
