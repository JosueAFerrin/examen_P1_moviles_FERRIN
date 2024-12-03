class InversorCadena {
  // Método para invertir una palabra y devolver la lista de caracteres
  List<String> invertirCadena(String entrada) {
    return entrada.split('').reversed.toList();
  }
}
