import 'package:flutter/material.dart';

class PantallaResultado extends StatelessWidget {
  final List<String> listaInvertida;

  const PantallaResultado({required this.listaInvertida, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Resultado'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: ListView.builder(
          padding: const EdgeInsets.all(16.0),
          itemCount: listaInvertida.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(
                listaInvertida[index],
                style: const TextStyle(fontSize: 24),
                textAlign: TextAlign.center,
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: () {
          Navigator.pop(context); // Regresa a la pantalla de entrada
        },
        child: const Icon(Icons.arrow_back),
      ),
    );
  }
}
