import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:house_generator/data/house_local_data_source.dart';
import 'package:house_generator/data/house_repository_impl.dart';
import 'package:house_generator/domain/house.dart';
import 'package:house_generator/house_generator/cubit/house_details_cubit.dart';
import 'package:house_generator/l10n/l10n.dart';

import '../../widgets/attribute_shield.dart';

class HouseDetailsPage extends StatelessWidget {
  const HouseDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    House house = ModalRoute.of(context)!.settings.arguments as House;
    final l10n = context.l10n;
    return BlocProvider(
      //TODO: Inject these dependencies
      create: (_) => HouseDetailsCubit(
          HouseRepositoryImpl(localDataSource: HouseLocalDataSourceImpl())),
      child: BlocBuilder<HouseDetailsCubit, HouseDetailsState>(
          builder: (context, state) {
        if (state is HouseDetailsInitial) {
          return HouseDetailsWidget(house: house);
        } else if (state is DetailsChanged) {
          return HouseDetailsWidget(
              house: house.copyWith(attributes: state.attributes));
        } else {
          return Container();
        }
      }),
    );
  }
}

class HouseDetailsWidget extends StatelessWidget {
  const HouseDetailsWidget(
      {Key? key, required this.house, this.timesIncreased = 0})
      : super(key: key);

  final House house;
  final int timesIncreased;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalles de Casa'),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            house.name,
            style: const TextStyle(fontSize: 24.0),
          ),
          const SizedBox(
            height: 32.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                child: AttributeShield(
                  value: house.attributes.lands.toString(),
                  label: l10n.lands,
                ),
                onTap: () {
                  context
                      .read<HouseDetailsCubit>()
                      .increaseValue(attr: house.attributes, attrPosition: 0);
                },
              ),
              GestureDetector(
                  child: AttributeShield(
                    value: house.attributes.defense.toString(),
                    label: l10n.defense,
                  ),
                  onTap: () {
                    context
                        .read<HouseDetailsCubit>()
                        .increaseValue(attr: house.attributes, attrPosition: 1);
                  }),
              GestureDetector(
                  child: AttributeShield(
                    value: house.attributes.influence.toString(),
                    label: l10n.influence,
                  ),
                  onTap: () {
                    context
                        .read<HouseDetailsCubit>()
                        .increaseValue(attr: house.attributes, attrPosition: 2);
                  }),
              GestureDetector(
                  child: AttributeShield(
                    value: house.attributes.law.toString(),
                    label: l10n.law,
                  ),
                  onTap: () {
                    context
                        .read<HouseDetailsCubit>()
                        .increaseValue(attr: house.attributes, attrPosition: 3);
                  }),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                  child: AttributeShield(
                    value: house.attributes.population.toString(),
                    label: l10n.population,
                  ),
                  onTap: () {
                    context
                        .read<HouseDetailsCubit>()
                        .increaseValue(attr: house.attributes, attrPosition: 4);
                  }),
              GestureDetector(
                  child: AttributeShield(
                    value: house.attributes.power.toString(),
                    label: l10n.power,
                  ),
                  onTap: () {
                    context
                        .read<HouseDetailsCubit>()
                        .increaseValue(attr: house.attributes, attrPosition: 5);
                  }),
              GestureDetector(
                  child: AttributeShield(
                    value: house.attributes.wealth.toString(),
                    label: l10n.wealth,
                  ),
                  onTap: () {
                    context
                        .read<HouseDetailsCubit>()
                        .increaseValue(attr: house.attributes, attrPosition: 6);
                  })
            ],
          ),
        ],
      ),
    );
  }
}
