part of 'house_details_cubit.dart';

abstract class HouseDetailsState extends Equatable {
  const HouseDetailsState();
}

class HouseDetailsInitial extends HouseDetailsState {
  @override
  List<Object> get props => [];
}

class DetailsChanged extends HouseDetailsState {
  final Attributes attributes;

  const DetailsChanged({required this.attributes});

  @override
  List<Object?> get props => [attributes];
}
