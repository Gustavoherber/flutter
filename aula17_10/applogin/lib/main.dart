import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _emailController = TextEditingController();

  final _passController = TextEditingController();

  String? _erroEmail;

  String? _erroSenha;

  _sucessoLogin() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Login'),
        content: Text('Sucesso'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text('Ok'),
          )
        ],
      ),
    );
  }

  _falhaLogin() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Login'),
        content: Text('Inválido'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('Ok'),
          ),
        ],
      ),
    );
  }

  bool _validarCampos(String email, String senha) {
    _erroEmail = null;
    _erroSenha = null;
    if (email.isEmpty) {
      _erroEmail = "E-mail é obrigatório";
    }
    if (senha.isEmpty) {
      _erroSenha = "Senha é obrigatório";
    }
    return _erroEmail == null && _erroSenha == null;
  }

  bool _autenticar(String email, String senha) {
    return email == "gustavo" && senha == "1234";
  }

  _click() {
    String email = _emailController.text;
    String senha = _passController.text;

    if (_validarCampos(email, senha)) {
      if (_autenticar(email, senha)) {
        _sucessoLogin();
      } else {
        _falhaLogin();
      }
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        backgroundColor: Colors.lightGreen,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(32),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Image(
                  image: AssetImage('assets/dogicon2.png'),
                ),
                Container(
                  margin: const EdgeInsets.all(20),
                  child: const Text(
                    'Pet House',
                    style: TextStyle(
                      fontSize: 40,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      hintText: 'Informe seu e-mail',
                      labelText: 'E-mail',
                      border: OutlineInputBorder(),
                      suffixText: '@pethouse.com',
                      errorText: _erroEmail,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    controller: _passController,
                    decoration: InputDecoration(
                      hintText: 'Informe sua senha',
                      labelText: 'Senha',
                      border: OutlineInputBorder(),
                      errorText: _erroSenha,
                    ),
                    obscureText: true,
                    obscuringCharacter: "*",
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: _click,
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green),
                        child: const Text('Login'),
                      ),
                    ),
                  ],
                )
                // const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
