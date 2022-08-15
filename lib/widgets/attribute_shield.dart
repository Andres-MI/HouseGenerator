import 'package:flutter/material.dart';

class AttributeShield extends StatelessWidget {
  final String value;
  final String label;
  final double size;

  const AttributeShield({
    Key? key,
    required this.value,
    required this.label,
    this.size = 80,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                    width: size,
                    height: size,
                    child: Image.asset('assets/images/shield_attr_icon.png')),
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
    );
  }
}