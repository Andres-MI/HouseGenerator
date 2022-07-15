import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.tealAccent,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ImageButton(
                image: Image.asset('assets/images/shield_icon.png'),
                label: 'Nueva Casa Noble',
                onPressed: () {
                  Navigator.pushNamed(context, '/new_house');
                },
              ),
              ImageButton(
                image: Image.asset('assets/images/pj_icon.png'),
                label: 'Nuevo PJ',
                onPressed: () {},
              ),
            ],
          ),
          const SizedBox(height: 64.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ImageButton(
                image: Image.asset('assets/images/throne_icon.png'),
                label: 'Listado de Casas',
                onPressed: () {},
              ),
              ImageButton(
                image: Image.asset('assets/images/settings_icon.png'),
                label: 'Ajustes',
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}

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
