import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:house_generator/core/enums/house_age.dart';
import 'package:house_generator/l10n/l10n.dart';
import 'package:house_generator/data/house_local_data_source.dart';
import 'package:house_generator/data/house_repository_impl.dart';
import 'package:house_generator/domain/house.dart';
import 'package:house_generator/house_generator/cubit/house_details_cubit.dart';

import '../../widgets/attribute_shield.dart';

class HouseDetailsPage extends StatelessWidget {
  const HouseDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    House house = ModalRoute.of(context)!.settings.arguments as House;
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

class HouseDetailsWidget extends StatefulWidget {
  const HouseDetailsWidget(
      {Key? key, required this.house, this.timesIncreased = 0})
      : super(key: key);

  final House house;
  final int timesIncreased;

  @override
  State<HouseDetailsWidget> createState() => _HouseDetailsWidgetState();
}

class _HouseDetailsWidgetState extends State<HouseDetailsWidget> {
  HouseAge? dropdownValue = HouseAge.newHouse;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Scaffold(
        appBar: AppBar(
          title: Text(l10n.houseHistory),
          backgroundColor: Colors.lightBlueAccent,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              widget.house.name,
              style: const TextStyle(fontSize: 24.0),
            ),
            const SizedBox(
              height: 32.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: GestureDetector(
                    child: AttributeShield(
                      value: widget.house.attributes.lands.toString(),
                      label: l10n.lands,
                    ),
                    onTap: () {
                      showConfirmDialog(context: context, attrPosition: 0);
                    },
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                      child: AttributeShield(
                        value: widget.house.attributes.defense.toString(),
                        label: l10n.defense,
                      ),
                      onTap: () {
                        showConfirmDialog(context: context, attrPosition: 1);
                      }),
                ),
                Expanded(
                  child: GestureDetector(
                      child: AttributeShield(
                        value: widget.house.attributes.influence.toString(),
                        label: l10n.influence,
                      ),
                      onTap: () {
                        showConfirmDialog(context: context, attrPosition: 2);
                      }),
                ),
                Expanded(
                  child: GestureDetector(
                      child: AttributeShield(
                        value: widget.house.attributes.law.toString(),
                        label: l10n.law,
                      ),
                      onTap: () {
                        showConfirmDialog(context: context, attrPosition: 3);
                      }),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  width: 32.0,
                ),
                Expanded(
                  child: GestureDetector(
                      child: AttributeShield(
                        value: widget.house.attributes.population.toString(),
                        label: l10n.population,
                      ),
                      onTap: () {
                        showConfirmDialog(context: context, attrPosition: 4);
                      }),
                ),
                Expanded(
                  child: GestureDetector(
                      child: AttributeShield(
                        value: widget.house.attributes.power.toString(),
                        label: l10n.power,
                      ),
                      onTap: () {
                        showConfirmDialog(context: context, attrPosition: 5);
                      }),
                ),
                Expanded(
                  child: GestureDetector(
                      child: AttributeShield(
                        value: widget.house.attributes.wealth.toString(),
                        label: l10n.wealth,
                      ),
                      onTap: () {
                        showConfirmDialog(context: context, attrPosition: 6);
                      }),
                ),
                const SizedBox(
                  width: 32.0,
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  l10n.firstFounding,
                  style: const TextStyle(
                      fontSize: 15.0, fontWeight: FontWeight.bold),
                ),
                const SizedBox(width: 16.0),
                DropdownButton(
                    value: dropdownValue,
                    items: HouseAge.values.map((age) {
                      return DropdownMenuItem(
                          value: age, child: Text(age.name!));
                    }).toList(),
                    onChanged: (HouseAge? newValue) {
                      setState(() {
                        dropdownValue = newValue;
                      });
                    }),
              ],
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, '/house_events',
                arguments: widget.house.copyWith(age: dropdownValue));
          },
          child: const Icon(Icons.arrow_forward),
        ));
  }

  void showConfirmDialog(
      {required BuildContext context, required int attrPosition}) {
    final l10n = context.l10n;
    showDialog(
        context: context,
        builder: (BuildContext dialogContext) {
          return AlertDialog(
            title: Text(l10n.increaseText),
            //content: ,
            actions: [
              TextButton(
                onPressed: () {
                  context.read<HouseDetailsCubit>().increaseValue(
                      attr: widget.house.attributes,
                      attrPosition: attrPosition);
                  Navigator.of(dialogContext).pop();
                },
                child: Text(l10n.yes),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.of(dialogContext).pop();
                  },
                  child: Text(l10n.no))
            ],
          );
        });
  }
}
