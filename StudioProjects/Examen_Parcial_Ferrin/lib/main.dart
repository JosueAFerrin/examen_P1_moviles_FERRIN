import 'package:flutter/material.dart';
import 'interfaz/pantalla_entrada.dart';

void main() {
  runApp(const MiAplicacion());
}

class MiAplicacion extends StatelessWidget {
  const MiAplicacion({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Palabra Inversa',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: PantallaEntrada(),
    );
  }
}
