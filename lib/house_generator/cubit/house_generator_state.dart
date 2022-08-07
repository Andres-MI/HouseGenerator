part of 'house_generator_cubit.dart';

abstract class HouseGeneratorState {
  const HouseGeneratorState();
}

class GeneratorInitial extends HouseGeneratorState {
  const GeneratorInitial();
}

class GeneratorLoading extends HouseGeneratorState {
  const GeneratorLoading();
}

class GeneratorReceived extends HouseGeneratorState {
  final Attributes attributes;

  GeneratorReceived(this.attributes);
}
