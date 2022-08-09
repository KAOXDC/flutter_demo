import 'package:flutter/material.dart';

// Clase Principal de la aplicación
void main() {
  runApp(const MyApp());
}

// Clase de la aplicación principal que contiene el widget principal
class MyApp extends StatelessWidget {
  // constructor de la clase MyApp
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Mi Primera App con Flutter',
        home: Center(
          child: Text("Hola Mundo!!!"),
        ));
  }
}
