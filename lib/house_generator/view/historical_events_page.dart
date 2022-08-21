import 'package:flutter/material.dart';
import 'package:house_generator/core/colors.dart';
import 'package:house_generator/l10n/l10n.dart';
import 'package:house_generator/widgets/attribute_shield.dart';

import '../../domain/attributes.dart';

class HistoricalEvents extends StatelessWidget {
  HistoricalEvents({Key? key}) : super(key: key);
  final List<Attributes> attributeList = [
    Attributes(
        lands: 0,
        defense: 5,
        influence: 5,
        law: 5,
        population: 0,
        power: 0,
        wealth: 5),
    Attributes(
        lands: 5,
        defense: 5,
        influence: 10,
        law: 20,
        population: 25,
        power: 10,
        wealth: 5),
    Attributes(
        lands: 5,
        defense: 5,
        influence: 10,
        law: 20,
        population: 25,
        power: 10,
        wealth: 5),
    Attributes(
        lands: 5,
        defense: 5,
        influence: 10,
        law: 20,
        population: 25,
        power: 10,
        wealth: 5)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Historical Events'),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: ListView.builder(
          itemCount: attributeList.length,
          itemBuilder: (context, index) {
            return AttributeRow(
              attributes: attributeList[index],
              backgroundColor: index % 2 == 0 ? kLightBlue : Colors.white,
            );
          }),
    );
  }
}

class AttributeRow extends StatelessWidget {
  const AttributeRow({
    Key? key,
    required this.attributes,
    required this.backgroundColor,
  }) : super(key: key);

  final Attributes attributes;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Container(
      color: backgroundColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            const SizedBox(
              height: 16.0,
            ),
            Text(
              'Infraestructura',
              style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
                'Description of the historical event and its influence on the house'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: AttributeShield(
                    value: attributes.lands.toString(),
                    label: l10n.lands,
                    size: 60,
                    fontSize: 12.0,
                  ),
                ),
                Expanded(
                  child: AttributeShield(
                    value: attributes.defense.toString(),
                    label: l10n.defense,
                    size: 60,
                    fontSize: 12.0,
                  ),
                ),
                Expanded(
                  child: AttributeShield(
                    value: attributes.influence.toString(),
                    label: l10n.influence,
                    size: 60,
                    fontSize: 12.0,
                  ),
                ),
                Expanded(
                  child: AttributeShield(
                    value: attributes.law.toString(),
                    label: l10n.law,
                    size: 60,
                    fontSize: 12.0,
                  ),
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
                  child: AttributeShield(
                    value: attributes.population.toString(),
                    label: l10n.population,
                    size: 60,
                    fontSize: 12.0,
                  ),
                ),
                Expanded(
                  child: AttributeShield(
                    value: attributes.power.toString(),
                    label: l10n.power,
                    size: 60,
                    fontSize: 12.0,
                  ),
                ),
                Expanded(
                  child: AttributeShield(
                    value: attributes.wealth.toString(),
                    label: l10n.wealth,
                    size: 60,
                    fontSize: 12.0,
                  ),
                ),
                const SizedBox(
                  width: 32.0,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
