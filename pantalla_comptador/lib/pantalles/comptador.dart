import 'package:flutter/material.dart';

class Comptador extends StatelessWidget {
  const Comptador({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text('10'),
            Text('Clics')
          ],
        ),
      )
    );
  }
}