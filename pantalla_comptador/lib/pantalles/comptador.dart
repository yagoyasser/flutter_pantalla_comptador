import 'package:flutter/material.dart';

class Comptador extends StatefulWidget {
  const Comptador({super.key});

  @override
  State<Comptador> createState() => _ComptadorState();
}

class _ComptadorState extends State<Comptador> {
  int comptadorClics = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pantalles: Comptador'),
        leading: IconButton(
          onPressed: () {
            setState(() {
              comptadorClics = 0;
            });
          },
          icon: Icon(Icons.refresh_rounded),
        ), // leading: Es mostra principi (part esquerra). Solament 1 widget
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                comptadorClics = 0;
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
              comptadorClics.toString(),
              style: const TextStyle(
                fontSize: 160,
                fontWeight: FontWeight.w100,
              ),
            ),

            // Text('Clic${compatdorClics == 1 || compatdorClics == -1}? '': 's'}', style: const TextStyle(fontSize: 160, fontWeight: FontWeight.w100,),)
            if (comptadorClics == 1 || comptadorClics == -1)
              Text(
                'Clic',
                style: const TextStyle(
                  fontSize: 160,
                  fontWeight: FontWeight.w100,
                ),
              ),
            if (comptadorClics != 1 && comptadorClics != -1)
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
          BotonsInferiors(
            icona: Icons.plus_one,
            alPremer: () {
              setState(() {
                comptadorClics++;
              });
            },
          ),
          SizedBox(height: 10,),
          BotonsInferiors(
            icona: Icons.exposure_minus_1_outlined,
            alPremer: () {
              if (comptadorClics == 0) return;
              setState(() {
                comptadorClics--;
              });
            },
          ),
          SizedBox(height: 10,),
          BotonsInferiors(
            icona: Icons.refresh_rounded,
            alPremer: () {
              setState(() {
                comptadorClics = 0;
              });
            },
          ),
        ],
      ),
    );
  }
}

class BotonsInferiors extends StatelessWidget {
  final IconData icona;
  final VoidCallback? alPremer;
  
  const BotonsInferiors({
    super.key,
    required this.icona,
    this.alPremer,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      // shape: const StadiumBorder(),
      onPressed: alPremer,
      child: Icon(icona),
    );
  }
}