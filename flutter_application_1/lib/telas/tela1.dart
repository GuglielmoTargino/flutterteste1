import 'package:flutter/material.dart';
import 'package:flutter_application_1/telas/tela2.dart';

class Tela1 extends StatelessWidget {
  const Tela1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          "Estou aprendendo",
          style: TextStyle(
            fontSize: 32,
            color: Color.fromARGB(255, 175, 187, 12),
          ),
        ),
        centerTitle: true,
        toolbarHeight: 150,
      ),
      backgroundColor: const Color.fromARGB(255, 163, 111, 52),

      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'Guga',
                style: TextStyle(
                  fontSize: 32,
                  color: Color.fromARGB(255, 54, 43, 151),
                ),
              ),

              const SizedBox(height: 12),

              const TextField(
                decoration: InputDecoration(
                  hintText: 'Digite algo...',
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(),
                ),
              ),

              const SizedBox(height: 12),

              const TextField(
                decoration: InputDecoration(
                  hintText: 'Digite algo...',
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(),
                ),
              ),

              const SizedBox(height: 20),

              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Tela2()),
                  );
                },
                child: const Text("Ir para Tela 2"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
