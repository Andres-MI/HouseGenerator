import 'package:flutter/material.dart';
import 'package:house_generator/models/house_data.dart';
import 'package:house_generator/regions.dart';

import '../models/house.dart';
import '../widgets/attribute_shield.dart';

class NewHouseScreen extends StatefulWidget {
  const NewHouseScreen({Key? key}) : super(key: key);

  @override
  State<NewHouseScreen> createState() => _NewHouseScreenState();
}

class _NewHouseScreenState extends State<NewHouseScreen> {
  var houseData = HouseData();
  late House house;
  Regions? _selectedRegion;

  @override
  void initState() {
    house = House('', Regions.theNorth, '', '', '', '', '', '', '');
    super.initState();
  }

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
            DropdownButton(
                value: _selectedRegion,
                items: Regions.values.map((region) {
                  return DropdownMenuItem(
                      value: region, child: Text(region.name!));
                }).toList(),
                onChanged: (Regions? newValue) {
                  setState(() {
                    _selectedRegion = newValue!;
                    house = houseData.changeRegion(region: newValue);
                  });
                }),
            const SizedBox(height: 32.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AttributeShield(
                  image: Image.asset('assets/images/shield_attr2_icon.png'),
                  value: house.lands,
                  label: 'Tierras',
                ),
                AttributeShield(
                  image: Image.asset('assets/images/shield_attr2_icon.png'),
                  value: house.defense,
                  label: 'Defensa',
                ),
                AttributeShield(
                  image: Image.asset('assets/images/shield_attr2_icon.png'),
                  value: house.influence,
                  label: 'Influencia',
                ),
                AttributeShield(
                  image: Image.asset('assets/images/shield_attr2_icon.png'),
                  value: house.law,
                  label: 'Ley',
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AttributeShield(
                  image: Image.asset('assets/images/shield_attr2_icon.png'),
                  value: house.population,
                  label: 'Población',
                ),
                AttributeShield(
                  image: Image.asset('assets/images/shield_attr2_icon.png'),
                  value: house.power,
                  label: 'Poder',
                ),
                AttributeShield(
                  image: Image.asset('assets/images/shield_attr2_icon.png'),
                  value: house.wealth,
                  label: 'Fortuna',
                )
              ],
            ),
            const SizedBox(height: 32.0),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    house = houseData.createHouse();
                  });
                },
                child: const Text('Generar nueva casa'))
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          tooltip: 'Increment',
          child: const Icon(Icons.arrow_forward),
        ));
  }
}
