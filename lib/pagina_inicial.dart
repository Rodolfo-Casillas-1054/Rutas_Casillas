import 'package:flutter/material.dart';

class PantallaI extends StatelessWidget {
  final String titulo;
  const PantallaI({Key? key, required this.titulo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff67d76b), // Fondo verde
        title: Center(
          child: Text(
            titulo,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
        ),
      ),
      body: Center(
        // Envuelve la columna con un Center
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Centra verticalmente
          crossAxisAlignment:
              CrossAxisAlignment.center, // Centra horizontalmente
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pantalla2');
              },
              child: const Text('Ir a pantalla dos'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pantalla3');
              },
              child: const Text('Ir a pantalla tres'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pantalla4');
              },
              child: const Text('Ir a pantalla cuatro'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pantalla5');
              },
              child: const Text('Ir a pantalla cinco'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pantalla6');
              },
              child: const Text('Ir a pantalla seis'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pantalla7');
              },
              child: const Text('Ir a pantalla siete'),
            ),
          ],
        ),
      ),
    );
  }
}
