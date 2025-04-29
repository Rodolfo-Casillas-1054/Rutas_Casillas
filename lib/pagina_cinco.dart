import 'package:flutter/material.dart';

class PantallaV extends StatefulWidget {
  const PantallaV({Key? key}) : super(key: key);

  @override
  State<PantallaV> createState() => _PantallaVState();
}

class _PantallaVState extends State<PantallaV> {
  bool _bool = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff67d76b), // Fondo azul
        title: const Center(
          child: Text(
            'Pantalla Cinco',
            style: TextStyle(
              color: Colors.white, // Letra blanca
              fontSize: 20.0, // Tamaño de la letra 20
            ),
          ),
        ),
      ),
      body: const Widget012(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _bool = !_bool;
          });
        },
        child: const Icon(Icons.refresh),
      ),
    );
  }
}

class Widget012 extends StatefulWidget {
  const Widget012({Key? key}) : super(key: key);

  @override
  Widget012State createState() => Widget012State();
}

class Widget012State extends State<Widget012> {
  final _items = [];
  final GlobalKey<AnimatedListState> _key = GlobalKey();

  void _addItem() {
    _items.insert(0, "Item ${_items.length + 1}");
    _key.currentState!.insertItem(
      0,
      duration: const Duration(seconds: 1),
    );
  }

  void _removeItem(int index) {
    _key.currentState!.removeItem(
      index,
      (_, animation) {
        return SizeTransition(
          sizeFactor: animation,
          child: const Card(
            margin: EdgeInsets.all(10),
            color: Colors.red,
            child: ListTile(
              title: Text(
                "Deleted",
                style: TextStyle(fontSize: 24),
              ),
            ),
          ),
        );
      },
      duration: const Duration(milliseconds: 300),
    );
    _items.removeAt(index);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 10),
        IconButton(
          onPressed: _addItem,
          icon: const Icon(Icons.add),
        ),
        Expanded(
          child: AnimatedList(
            key: _key,
            initialItemCount: 0,
            padding: const EdgeInsets.all(10),
            itemBuilder: (context, index, animation) {
              return SizeTransition(
                key: UniqueKey(),
                sizeFactor: animation,
                child: Card(
                  margin: const EdgeInsets.all(10),
                  color: Color(0xff67d76b),
                  child: ListTile(
                    title: Text(
                      _items[index],
                      style: const TextStyle(fontSize: 24),
                    ),
                    trailing: IconButton(
                      icon: const Icon(Icons.delete),
                      onPressed: () {
                        _removeItem(index);
                      },
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
