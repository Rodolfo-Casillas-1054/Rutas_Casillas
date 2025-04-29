import 'package:flutter/material.dart';

class PantallaIV extends StatefulWidget {
  const PantallaIV({Key? key}) : super(key: key);

  @override
  State<PantallaIV> createState() => _PantallaIVState();
}

class _PantallaIVState extends State<PantallaIV> {
  bool _bool = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff67d76b), // Fondo azul
        title: const Center(
          child: Text(
            'Pantalla Cuatro',
            style: TextStyle(
              color: Colors.white, // Letra blanca
              fontSize: 20.0, // Tamaño de la letra 20
            ),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            width: double.infinity,
            height: 30,
          ),
          TextButton(
            onPressed: () {
              setState(() {
                _bool = !_bool;
              });
            },
            child: const Text(
              'Switch Image',
              style: TextStyle(
                color: Color(0xff39ea3f),
              ),
            ),
          ),
          AnimatedCrossFade(
            firstChild: Image.network(
              'https://i.pinimg.com/736x/ef/ac/49/efac49bb92001fb690b727cfdfb4d8f9.jpg', // Example blue image URL
              width: double.infinity,
            ),
            secondChild: Image.network(
              'https://i.pinimg.com/736x/48/9b/3f/489b3fafc1ef83baa52367df3fdd9931.jpg', // Example ocean image URL
              width: double.infinity,
            ),
            crossFadeState:
                _bool ? CrossFadeState.showFirst : CrossFadeState.showSecond,
            duration: const Duration(seconds: 1),
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
