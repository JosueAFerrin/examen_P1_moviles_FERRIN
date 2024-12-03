import 'package:flutter/material.dart';
import '../logica/inversor_cadena.dart';
import 'pantalla_resultado.dart';

class PantallaEntrada extends StatelessWidget {
  final TextEditingController _controlador = TextEditingController();
  final RegExp _expresionRegular = RegExp(r'^[a-zA-Z]+$'); // Solo letras

  PantallaEntrada({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Invertir Palabra'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Ingresa una palabra:',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: _controlador,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Escribe aquí solo letras...',
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
              onPressed: () {
                String entrada = _controlador.text.trim();

                // Verificar si la entrada es válida
                if (entrada.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Por favor, ingresa una palabra.'),
                    ),
                  );
                } else if (!_expresionRegular.hasMatch(entrada)) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Solo se permiten letras. Intenta de nuevo.'),
                    ),
                  );
                } else {
                  // Entrada válida: Navegar a la pantalla de resultado
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PantallaResultado(
                        listaInvertida: InversorCadena().invertirCadena(entrada),
                      ),
                    ),
                  );
                }
              },
              child: const Text('Mostrar letras'),
            ),
          ],
        ),
      ),
    );
  }
}
