import 'package:flutter/material.dart';

class NewHouseScreen extends StatefulWidget {
  const NewHouseScreen({Key? key}) : super(key: key);

  @override
  State<NewHouseScreen> createState() => _NewHouseScreenState();
}

class _NewHouseScreenState extends State<NewHouseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AttributeShield(
            image: Image.asset('assets/images/shield_attr2_icon.png'),
            value: '22',
            label: 'Tierras',
          ),
          AttributeShield(
            image: Image.asset('assets/images/shield_attr2_icon.png'),
            value: '18',
            label: 'Defensa',
          ),
          AttributeShield(
            image: Image.asset('assets/images/shield_attr2_icon.png'),
            value: '20',
            label: 'Influencia',
          ),
          AttributeShield(
            image: Image.asset('assets/images/shield_attr2_icon.png'),
            value: '18',
            label: 'Ley',
          ),
          AttributeShield(
            image: Image.asset('assets/images/shield_attr2_icon.png'),
            value: '22',
            label: 'Población',
          ),
          AttributeShield(
            image: Image.asset('assets/images/shield_attr2_icon.png'),
            value: '24',
            label: 'Poder',
          ),
          AttributeShield(
            image: Image.asset('assets/images/shield_attr2_icon.png'),
            value: '21',
            label: 'Fortuna',
          )
        ],
      ),
    );
  }
}

class AttributeShield extends StatelessWidget {
  final Image image;
  final String value;
  final String label;
  const AttributeShield({
    Key? key,
    required this.image,
    required this.value,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GestureDetector(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  SizedBox(width: 80, height: 80, child: image),
                  Text(value)
                ],
              ),
              Text(
                label,
                style: const TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
