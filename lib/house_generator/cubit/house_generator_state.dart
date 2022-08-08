part of 'house_generator_cubit.dart';

abstract class HouseGeneratorState extends Equatable {
  const HouseGeneratorState();
}

class GeneratorInitial extends HouseGeneratorState {
  const GeneratorInitial();

  @override
  List<Object?> get props => [];
}

class GeneratorLoading extends HouseGeneratorState {
  const GeneratorLoading();

  @override
  List<Object?> get props => [];
}

class GeneratorReceived extends HouseGeneratorState {
  final Attributes attributes;

  const GeneratorReceived(this.attributes);

  @override
  List<Object?> get props => [attributes];
}
