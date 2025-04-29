import 'package:flutter/material.dart';

class PantallaVI extends StatefulWidget {
  const PantallaVI({Key? key}) : super(key: key);

  @override
  State<PantallaVI> createState() => _PantallaVIState();
}

class _PantallaVIState extends State<PantallaVI> {
  bool _bool = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff67d76b), // Fondo azul
        title: const Center(
          child: Text(
            'Pantalla Seis',
            style: TextStyle(
              color: Colors.white, // Letra blanca
              fontSize: 20.0, // Tamaño de la letra 20
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Widget de AnimatedPadding
            const Expanded(child: Widget015()),

            // Toggle con el estado _bool
            Switch(
              value: _bool,
              onChanged: (value) {
                setState(() {
                  _bool = value;
                });
              },
            ),
            Text(_bool ? 'Activado' : 'Desactivado'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _bool = !_bool;
          });
        },
        child: Icon(_bool ? Icons.toggle_on : Icons.toggle_off),
      ),
    );
  }
}

class Widget015 extends StatefulWidget {
  const Widget015({Key? key}) : super(key: key);

  @override
  State<Widget015> createState() => _Widget015State();
}

class _Widget015State extends State<Widget015> {
  double padValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xff67d76b),
          ),
          child: const Text('Change padding'),
          onPressed: () {
            setState(() {
              padValue = padValue == 0.0 ? 100.0 : 0.0;
            });
          },
        ),
        Text('Padding = $padValue'),
        AnimatedPadding(
          padding: EdgeInsets.all(padValue),
          duration: const Duration(seconds: 2),
          curve: Curves.easeInOut,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 4,
            color: Color(0xff67d76b),
          ),
        ),
      ],
    );
  }
}
