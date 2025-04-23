import 'package:flutter/material.dart';

class Comptador extends StatefulWidget {
  const Comptador({super.key});

  @override
  State<Comptador> createState() => _ComptadorState();
}

class _ComptadorState extends State<Comptador> {
  int contadorClics = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pantalles: Comptador')
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              contadorClics.toString(),
              style: const TextStyle(
                fontSize: 160,
                fontWeight: FontWeight.w100
              )
            ),
            Text(
              'Clic${contadorClics == 1 ? '':'s'}',
              style: const TextStyle(
                fontSize: 160,
                fontWeight: FontWeight.w100
              )
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          contadorClics++;
          setState(() {}); // Actualitza el contingut dels widgets modificats
        },
        child: const Icon(Icons.plus_one),
      ),
    );
  }
}