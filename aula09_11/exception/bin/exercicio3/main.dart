import 'dart:io';

void main(List<String> args) {
  try {
    nivel1();
  } catch (e) {
    print(e);
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
  num n1 = num.parse(stdin.readLineSync()!);
  num n2 = num.parse(stdin.readLineSync()!);
  num divisao = n1 ~/ n2;
  // if (divisao == double.infinity) {
  //   throw UnsupportedError('Divisão por zero resulta infinito');
  // }
  print('A divisão entre eles é: $divisao');
}
