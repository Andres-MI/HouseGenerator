import 'package:flutter/material.dart';

import '../../widgets/attribute_shield.dart';

class HouseGeneratorPage extends StatelessWidget {
  const HouseGeneratorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: const Text('Generador de Casas'),
          backgroundColor: Colors.lightBlueAccent,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 32.0),
              child: TextField(
                decoration: InputDecoration(hintText: 'Nombre de la casa'),
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
              children: const [
                AttributeShield(
                  value: "21",
                  label: 'Tierras',
                ),
                AttributeShield(
                  value: "30",
                  label: 'Defensa',
                ),
                AttributeShield(
                  value: "20",
                  label: 'Influencia',
                ),
                AttributeShield(
                  value: "18",
                  label: 'Ley',
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                AttributeShield(
                  value: "18",
                  label: 'Población',
                ),
                AttributeShield(
                  value: "27",
                  label: 'Poder',
                ),
                AttributeShield(
                  value: "25",
                  label: 'Fortuna',
                )
              ],
            ),
            const SizedBox(height: 32.0),
            ElevatedButton(
                onPressed: () {
                },
                child: const Text('Generar nueva casa'))
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
