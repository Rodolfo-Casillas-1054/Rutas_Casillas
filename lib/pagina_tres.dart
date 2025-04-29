import 'package:flutter/material.dart';

class PantallaIII extends StatefulWidget {
  const PantallaIII({Key? key}) : super(key: key);

  @override
  State<PantallaIII> createState() => _PantallaIIIState();
}

class _PantallaIIIState extends State<PantallaIII> {
  int _counter = 0;
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff67d76b), // Fondo azul
        title: const Center(
          child: Text(
            'Pantalla Tres nava',
            style: TextStyle(
              color: Colors.white, // Letra blanca
              fontSize: 20.0, // Tamaño de la letra 20
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ), // Add some spacing
          GestureDetector(
            onTap: () {
              setState(() {
                selected = !selected;
              });
            },
            child: Center(
              child: Container(
                width: double.infinity,
                height: 250.0,
                color: Color(0xff67d76b),
                child: AnimatedAlign(
                  alignment:
                      selected ? Alignment.topRight : Alignment.bottomLeft,
                  duration: const Duration(seconds: 1),
                  curve: Curves.fastOutSlowIn,
                  child: const FlutterLogo(size: 50.0),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Volver!'),
            ),
          ),
        ],
      ),
    );
  }
}
