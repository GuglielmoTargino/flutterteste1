import 'package:flutter/material.dart';
import 'package:flutter_application_1/telas/tela1.dart';

class Tela2 extends StatelessWidget {
  const Tela2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tela 2', style: TextStyle(color: Colors.brown)),
        centerTitle: true,
        backgroundColor: Colors.amber,
        actions: [
          PopupMenuButton<String>(
            onSelected: (value) {
              if (value == 'menu1') {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const Tela1()),
                );

                //Navigator.pop(context); fecha a atual e volta
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Clicou no Menu 1')),
                );
              } else if (value == 'menu2') {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Clicou no Menu 2')),
                );
              } else if (value == 'menu3') {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Clicou no Menu 3')),
                );
              }
            },
            itemBuilder: (context) => const [
              PopupMenuItem(value: 'menu1', child: Text('Menu 1')),
              PopupMenuItem(value: 'menu2', child: Text('Menu 2')),
              PopupMenuItem(value: 'menu3', child: Text('Menu 3')),
            ],
          ),
        ],
      ),
      backgroundColor: const Color.fromARGB(255, 161, 128, 167),
      body: const Center(
        child: Text('Essa é a Tela 2', style: TextStyle(fontSize: 24)),
      ),
    );
  }
}
