import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

int contador = 0;

class _CounterScreenState extends State<CounterScreen> {
  @override
  Widget build(BuildContext context) {
    const fontSize30 = TextStyle(fontSize: 30);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Screen"),
        elevation: 10.5,
      ),
      body: Center(
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            const Text("Numero de clicks: ", style: fontSize30),
            Text('$contador', style: fontSize30),
          ]),
        ),
      ),
      // Crear un botón flotante que se muestra en la parte inferior derecha de la pantalla
      floatingActionButtonLocation:
          FloatingActionButtonLocation.centerFloat, // centra el botón flotante
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: () {
              contador++;
              setState(() {}); // redibuja de nuevo el Widget
              // print(contador);
            },
          ),
          SizedBox(width: 10),
          FloatingActionButton(
            child: const Icon(Icons.restart_alt_outlined),
            onPressed: () {
              contador = 0;
              setState(() {}); // redibuja de nuevo el Widget
              // print(contador);
            },
          ),
          SizedBox(width: 10),
          FloatingActionButton(
            child: const Icon(Icons.remove),
            onPressed: () {
              contador--;
              setState(() {}); // redibuja de nuevo el Widget
              // print(contador);
            },
          ),
        ],
      ),
    );
  }
}
