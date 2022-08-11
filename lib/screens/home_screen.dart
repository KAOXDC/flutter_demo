import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const fontSize30 = TextStyle(fontSize: 30);
    int contador = 0;

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
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat, // centra el botón flotante
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          contador++;
          print(contador);
        },
      ),
    );
  }
}
