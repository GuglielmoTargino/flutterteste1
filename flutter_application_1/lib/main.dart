import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  String resu = "Guga aprendendo";

  void Somar() {
    resu = "Guga soma";
  }

  void Subtrair() {
    resu = "Guga diminue";
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 16, 14, 31),
        appBar: AppBar(
          title: const Text(
            'Contador do Tempo',
            style: TextStyle(color: Color.fromARGB(255, 19, 18, 19)),
          ),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 236, 221, 6),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              // só pra empilhar as 3 Rows na vertical
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(16),
                  margin: const EdgeInsets.only(bottom: 20),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 221, 224, 228),
                    border: Border.all(
                      color: const Color.fromARGB(255, 26, 14, 206),
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),

                  child: Text(
                    resu,
                    style: const TextStyle(
                      fontSize: 18,
                      color: Color.fromARGB(255, 20, 20, 20),
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                // ===== ROW 3 =====
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: Somar,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 36, 151, 7),
                      ),

                      child: Text(
                        'Start',
                        style: TextStyle(
                          color: Color.fromARGB(255, 23, 23, 24),
                        ),
                      ),
                    ),

                    SizedBox(width: 10),

                    ElevatedButton(
                      onPressed: Subtrair,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 235, 50, 4),
                      ),
                      child: Text(
                        'Stop',
                        style: TextStyle(
                          color: Color.fromARGB(255, 15, 15, 15),
                        ),
                      ),
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
