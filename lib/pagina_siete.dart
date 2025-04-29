import 'package:flutter/material.dart';

class PantallaVII extends StatefulWidget {
  const PantallaVII({Key? key}) : super(key: key);

  @override
  State<PantallaVII> createState() => _PantallaVIIState();
}

class _PantallaVIIState extends State<PantallaVII> {
  bool _bool = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff67d76b), // Fondo azul
        title: const Center(
          child: Text(
            'Pantalla Dos',
            style: TextStyle(
              color: Colors.white, // Letra blanca
              fontSize: 20.0, // Tamaño de la letra 20
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          // Widget de AnimatedRotation
          const Expanded(child: Widget018()),

          // Controles del estado _bool
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  _bool ? 'Modo Activo' : 'Modo Inactivo',
                  style: TextStyle(
                    fontSize: 18,
                    color: _bool ? Colors.green : Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Switch(
                  value: _bool,
                  onChanged: (value) {
                    setState(() {
                      _bool = value;
                    });
                  },
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _bool = !_bool;
          });
        },
        child: AnimatedRotation(
          turns: _bool ? 0 : 1 / 2,
          duration: const Duration(milliseconds: 500),
          child: Icon(
            _bool ? Icons.lock_open : Icons.lock_outline,
            size: 30,
          ),
        ),
      ),
    );
  }
}

class Widget018 extends StatefulWidget {
  const Widget018({Key? key}) : super(key: key);

  @override
  State<Widget018> createState() => Widget018State();
}

class Widget018State extends State<Widget018> {
  double turns = 0.0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(50),
            child: AnimatedRotation(
              turns: turns,
              duration: const Duration(seconds: 1),
              child: const FlutterLogo(
                size: 100,
              ),
            ),
          ),
          ElevatedButton(
            child: const Text('Rotar Logo'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xff67d76b),
            ),
            onPressed: () {
              setState(() => turns += 1 / 4);
            },
          ),
        ],
      ),
    );
  }
}
