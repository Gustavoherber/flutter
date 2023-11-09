import 'dart:io';

void main(List<String> args) {
  List<int> listaNumeros = [];

  try {
    while (true) {
      print('Informe um número:');
      int capturaNum = int.parse(stdin.readLineSync()!);
      listaNumeros.add(capturaNum);
    }
  } catch (e) {
    print(listaNumeros);
    print(e);
  }
}
