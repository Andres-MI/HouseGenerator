import 'package:flutter/material.dart';

class SmallAttributeShield extends StatelessWidget {
  final String value;
  final String label;

  const SmallAttributeShield({
    Key? key,
    required this.value,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 2.0),
        child: GestureDetector(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset('assets/images/shield_attr_icon.png'),
                  Text(value)
                ],
              ),
              Center(
                child: Text(
                  label,
                  maxLines: 1,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 10.0),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
