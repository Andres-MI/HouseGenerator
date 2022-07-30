import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:house_generator/house_generator/cubit/house_cubit.dart';
import 'package:house_generator/l10n/l10n.dart';

import '../../widgets/attribute_shield.dart';

class HouseGeneratorPage extends StatelessWidget {
  const HouseGeneratorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => HouseCubit(0),
      child: const HouseGeneratorView(),
    );
  }
}

class HouseGeneratorView extends StatelessWidget {
  const HouseGeneratorView({
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
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
                decoration: InputDecoration(hintText: l10n.nameHint),
              ),
            ),
            // DropdownButton(
            //     value: _selectedRegion,
            //     items: Regions.values.map((region) {
            //       return DropdownMenuItem(
            //           value: region, child: Text(region.name!));
            //     }).toList(),
            //     onChanged: (Regions? newValue) {
            //       setState(() {
            //         _selectedRegion = newValue!;
            //       });
            //     }),
            const SizedBox(height: 32.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AttributeShield(
                  value: "21",
                  label: l10n.lands,
                ),
                AttributeShield(
                  value: "30",
                  label: l10n.defense,
                ),
                AttributeShield(
                  value: "20",
                  label: l10n.influence,
                ),
                AttributeShield(
                  value: "18",
                  label: l10n.law,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AttributeShield(
                  value: "18",
                  label: l10n.population,
                ),
                AttributeShield(
                  value: "27",
                  label: l10n.power,
                ),
                AttributeShield(
                  value: "25",
                  label: l10n.wealth,
                )
              ],
            ),
            const SizedBox(height: 32.0),
            ElevatedButton(
                onPressed: () {
                },
                child: Text(l10n.generatorTitle))
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
          },
          tooltip: 'Increment',
          child: const Icon(Icons.arrow_forward),
        ));
  }
}
