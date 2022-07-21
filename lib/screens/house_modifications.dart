import 'package:flutter/material.dart';
import 'package:house_generator/models/house.dart';

import '../models/house_controller.dart';
import '../widgets/attribute_shield.dart';

class HouseModifications extends StatefulWidget {
  const HouseModifications({Key? key}) : super(key: key);

  @override
  State<HouseModifications> createState() => _HouseModificationsState();
}

class _HouseModificationsState extends State<HouseModifications> {
  late HouseController houseData;
  late House house;

  @override
  void initState() {

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    houseData = ModalRoute.of(context)!.settings.arguments as HouseController;
    house = houseData.house;
    return Scaffold(body: Column(children: [
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
    ],),);
  }
}
