import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:house_generator/l10n/l10n.dart';
import 'package:house_generator/data/house_local_data_source.dart';
import 'package:house_generator/data/house_repository_impl.dart';
import 'package:house_generator/domain/attributes.dart';
import 'package:house_generator/domain/house.dart';
import 'package:house_generator/house_generator/cubit/house_generator_cubit.dart';

import '../../core/enums/regions.dart';
import '../../widgets/attribute_shield.dart';

class HouseGeneratorPage extends StatelessWidget {
  const HouseGeneratorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        //TODO: Inject these dependencies
        create: (_) => HouseGeneratorCubit(
            HouseRepositoryImpl(localDataSource: HouseLocalDataSourceImpl())),
        child: BlocBuilder<HouseGeneratorCubit, HouseGeneratorState>(
          builder: (context, state) {
            if (state is GeneratorInitial || state is GeneratorLoading) {
              return HouseGeneratorView(
                attributes: Attributes(
                    lands: 0,
                    defense: 0,
                    influence: 0,
                    law: 0,
                    population: 0,
                    power: 0,
                    wealth: 0),
              );
            } else if (state is GeneratorReceived) {
              return HouseGeneratorView(attributes: state.attributes);
            } else {
              return Container();
            }
          },
        ));
  }
}

class HouseGeneratorView extends StatelessWidget {
  const HouseGeneratorView({
    Key? key,
    required this.attributes,
  }) : super(key: key);

  final Attributes attributes;

  @override
  Widget build(BuildContext context) {
    final myController = TextEditingController();
    final Regions selectedRegion = attributes.region ?? Regions.none;
    final l10n = context.l10n;

    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text(l10n.generatorTitle),
          backgroundColor: Colors.lightBlueAccent,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: TextField(
                controller: myController,
                decoration: InputDecoration(hintText: l10n.nameHint),
              ),
            ),
            const SizedBox(height: 32.0),
            DropdownButton(
                value: selectedRegion,
                items: Regions.values.map((region) {
                  return DropdownMenuItem(
                      value: region, child: Text(region.name ?? ''));
                }).toList(),
                onChanged: (newValue) {
                  context
                      .read<HouseGeneratorCubit>()
                      .changeRegion(region: newValue as Regions);
                }),
            const SizedBox(height: 32.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AttributeShield(
                  value: attributes.lands.toString(),
                  label: l10n.lands,
                ),
                AttributeShield(
                  value: attributes.defense.toString(),
                  label: l10n.defense,
                ),
                AttributeShield(
                  value: attributes.influence.toString(),
                  label: l10n.influence,
                ),
                AttributeShield(
                  value: attributes.law.toString(),
                  label: l10n.law,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AttributeShield(
                  value: attributes.population.toString(),
                  label: l10n.population,
                ),
                AttributeShield(
                  value: attributes.power.toString(),
                  label: l10n.power,
                ),
                AttributeShield(
                  value: attributes.wealth.toString(),
                  label: l10n.wealth,
                )
              ],
            ),
            const SizedBox(height: 32.0),
            ElevatedButton(
                onPressed: () {
                  context.read<HouseGeneratorCubit>().getHouseValues();
                },
                child: Text(l10n.generateText))
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, '/house_details',
                arguments: House(
                    name: myController.text,
                    region: selectedRegion,
                    attributes: attributes,
                    isLandedHouse: false));
          },
          child: const Icon(Icons.arrow_forward),
        ));
  }
}
