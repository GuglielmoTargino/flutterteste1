import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.amber,
        appBar: AppBar(
          title: const Text(
            'Exemplo com Rows',
            style: TextStyle(color: Color.fromARGB(255, 40, 42, 167)),
          ),
          centerTitle: true,
          backgroundColor: Colors.greenAccent,
        ),
        body: Center(
          child: Column(
            // só pra empilhar as 3 Rows na vertical
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // ===== ROW 1 =====
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.star),
                  SizedBox(width: 80),
                  Text('Row 1'),
                ],
              ),

              const SizedBox(height: 20),

              // ===== ROW 2 =====
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(Icons.home),
                  Icon(Icons.favorite),
                  Icon(Icons.settings),
                  Icon(Icons.attach_file_rounded),
                ],
              ),

              const SizedBox(height: 20),

              // ===== ROW 3 =====
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  ElevatedButton(onPressed: null, child: Text('OK')),
                  SizedBox(width: 10),
                  ElevatedButton(onPressed: null, child: Text('Cancelar')),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
