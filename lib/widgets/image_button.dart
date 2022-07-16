import 'package:flutter/material.dart';

class ImageButton extends StatelessWidget {
  final Image image;
  final String label;
  final VoidCallback? onPressed;
  const ImageButton({
    Key? key,
    required this.image,
    required this.label,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
            fixedSize: const Size(120, 130)),
        child: Column(
          children: [
            image,
            Text(
              label,
              maxLines: 2,
              textAlign: TextAlign.center,
            ),
          ],
        ));
  }
}