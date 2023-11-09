import 'dart:io';

void main(List<String> args) {
  try {
    nivel1();
  } on UnsupportedError catch (e) {
    print(e.message);
  }
}

nivel1() {
  try {
    nivel2();
  } on FormatException catch (e) {
    print('Valor informado não é um número inteiro');
    // print(e);
  }
}

nivel2() {
  print('Informe dois números');
  int n1 = int.parse(stdin.readLineSync()!);
  int n2 = int.parse(stdin.readLineSync()!);
  num divisao = n1 / n2;
  if (divisao == double.infinity) {
    throw UnsupportedError('Divisão por zero resulta infinito');
  }
  print('A divisão entre eles é: $divisao');
}
