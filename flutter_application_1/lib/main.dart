import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 102, 100, 91),
        appBar: AppBar(
          title: const Text(
            'Contador do Tempo',
            style: TextStyle(color: Color.fromARGB(255, 19, 18, 19)),
          ),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 214, 126, 10),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              // só pra empilhar as 3 Rows na vertical
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                /*
                // ===== ROW 1 =====
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.star),
                    SizedBox(width: 80),
                    Text('Row 1'),
                  ],
                ),*/
                const SizedBox(height: 20),

                /* // ===== ROW 2 =====
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Icon(Icons.home),
                    Icon(Icons.favorite),
                    Icon(Icons.settings),
                    Icon(Icons.attach_file_rounded),
                  ],
                ),*/
                const SizedBox(height: 20),

                // ===== ROW 3 =====
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 68, 167, 43),
                      ),
                      child: Text('Start'),
                    ),
                    SizedBox(width: 10),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 223, 50, 7),
                      ),
                      child: Text('Stop'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
