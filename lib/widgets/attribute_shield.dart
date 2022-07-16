import 'package:flutter/material.dart';

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
          child: Column(
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