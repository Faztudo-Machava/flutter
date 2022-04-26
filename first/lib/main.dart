import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My first app'),
        centerTitle: true,
        backgroundColor: Colors.greenAccent,
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: [
                const Center(
                  child: Text('Formulário de contacto'),
                ),
                const TextField(),
                const TextField(),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20.0, 0, 0),
                  child: ElevatedButton.icon(
                    onPressed: () {
                      // ignore: avoid_print
                      print('Cliquei!');
                    },
                    label: const Text('Enviar'),
                    icon: const Icon(Icons.mail),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: const FloatingActionButton(
        onPressed: null,
        child: Icon(
          Icons.air_rounded,
          color: Colors.black,
        ),
        backgroundColor: Colors.greenAccent,
      ),
    );
  }
}
