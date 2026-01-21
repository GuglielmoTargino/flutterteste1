import 'package:flutter/material.dart';

void main() {
  runApp(const MeuApp());
}

class Tela2 extends StatelessWidget {
  const Tela2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tela 2')),
      body: const Center(
        child: Text('Essa é a Tela 2', style: TextStyle(fontSize: 24)),
      ),
    );
  }
}

class MeuApp extends StatelessWidget {
  const MeuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // 👈 sem const
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  'Guga',
                  style: TextStyle(fontSize: 32, color: Colors.white),
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

                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Tela2()),
                    );
                  },
                  child: const Text('Ir para Tela 2'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
