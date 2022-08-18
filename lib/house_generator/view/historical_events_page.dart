import 'package:flutter/material.dart';
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
            return AttributeRow(attributes: attributeList[index]);
          }),
    );
  }
}

class AttributeRow extends StatelessWidget {
  const AttributeRow({
    Key? key,
    required this.attributes,
  }) : super(key: key);

  final Attributes attributes;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Row(
      children: [
        Expanded(
          child: AttributeShield(
            value: attributes.lands.toString(),
            label: l10n.lands,
          ),
        ),
        Expanded(
          child: AttributeShield(
            value: attributes.defense.toString(),
            label: l10n.defense,
          ),
        ),
        Expanded(
          child: AttributeShield(
            value: attributes.influence.toString(),
            label: l10n.influence,
          ),
        ),
        Expanded(
          child: AttributeShield(
            value: attributes.law.toString(),
            label: l10n.law,
          ),
        ),
        Expanded(
          child: AttributeShield(
            value: attributes.population.toString(),
            label: l10n.population,
          ),
        ),
        Expanded(
          child: AttributeShield(
            value: attributes.power.toString(),
            label: l10n.power,
          ),
        ),
        Expanded(
          child: AttributeShield(
            value: attributes.wealth.toString(),
            label: l10n.wealth,
          ),
        )
      ],
    );
  }
}
