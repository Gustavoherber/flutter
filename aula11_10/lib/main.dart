import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class Home extends StatelessWidget {
  Home({super.key});
  final emailcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        backgroundColor: Colors.lightGreen,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage('assets/dogicon'),
              ),
              TextField(
                controller: emailcontroller,
                decoration: const InputDecoration(
                  hintText: 'exemplo@pethouse.com',
                  labelText: 'E-mail',
                  border: OutlineInputBorder(),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

// Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     
          //   ],
          // )