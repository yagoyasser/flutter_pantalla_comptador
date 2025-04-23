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
        title: const Text('Pantalles: Comptador'),
        leading: IconButton(
          onPressed: () {
            setState(() {
              contadorClics = 0;
            });
          },
          icon: Icon(Icons.refresh_rounded),
        ), // leading: Es mostra principi (part esquerra). Solament 1 widget
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                contadorClics = 0;
              });
            },
            icon: Icon(Icons.refresh_rounded),
          ),
        ], // actions: Es mostra al final (part dreta). Admet un llistat de widgets
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              contadorClics.toString(),
              style: const TextStyle(
                fontSize: 160,
                fontWeight: FontWeight.w100,
              ),
            ),

            if (contadorClics == 1 || contadorClics == -1)
              Text(
                'Clic',
                style: const TextStyle(
                  fontSize: 160,
                  fontWeight: FontWeight.w100,
                ),
              ),

            if (contadorClics != 1 && contadorClics != -1)
              Text(
                'Clics',
                style: const TextStyle(
                  fontSize: 160,
                  fontWeight: FontWeight.w100,
                ),
              )
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              setState(
                () {
                  contadorClics++;
                },
              );
            },
            child: const Icon(Icons.plus_one),
          ),
          SizedBox(height: 10),
          FloatingActionButton(
            shape: const StadiumBorder(), // Canvia la forma del botó a una circular
            onPressed: () {
              setState(
                () {
                  contadorClics--;
                },
              ); 
            },
            child: const Icon(Icons.exposure_minus_1_outlined),
          ),
        ],
      ),
    );
  }
}
