import 'dart:io';

void main(List<String> args) {
  List<String> listaUsuarios = [];
  String opc = '';
  try {
    while (true) {
      print(
          '\nInforme a a opção desejada:\n1. Cadastrar usuário:\n2.Exibir lista através do índice\n3.Exibir lista completa\n4.Encerra aplicação');
      opc = stdin.readLineSync()!;
      switch (opc) {
        case '1':
          cadastrarUsuario(listaUsuarios);
          break;

        case '2':
          try {
            exibirListaIndice(listaUsuarios);
          } on CustomException catch (e) {
            print(e.cause);
          }

          break;

        case '3':
          exibirListaCompleta(listaUsuarios);

        case '4':
          print('\nAplicação encerrada');

        case '5':
          throw UnsupportedError('Erro lançado');
      }
    }
  } catch (e) {
    print(e);
  }
}

cadastrarUsuario(List<String> listaUsuarios) {
  print('Informe o nome de usuário a ser cadastrado:');
  String nome = stdin.readLineSync()!;
  listaUsuarios.add(nome);
}

exibirListaIndice(List<String> listaUsuarios) {
  try {
    print('Informe o índice do usuário que deseja exibir');
    int indice = int.parse(stdin.readLineSync()!);
    print(listaUsuarios[indice]);
  } catch (e) {
    throw CustomException('\nÍndice inválido');
  }
}

exibirListaCompleta(List<String> listaUsuarios) {
  print(listaUsuarios);
}

class CustomException implements Exception {
  String cause;
  CustomException(this.cause);
}
