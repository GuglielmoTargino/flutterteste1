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
        backgroundColor: const Color.fromARGB(255, 44, 44, 43),
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
                Container(
                  padding: const EdgeInsets.all(16),
                  margin: const EdgeInsets.only(bottom: 20),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(resu, style: const TextStyle(fontSize: 18)),
                ),

                const SizedBox(height: 20),

                // ===== ROW 3 =====
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: Somar,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 68, 167, 43),
                      ),
                      child: Text(
                        'Start',
                        style: TextStyle(
                          color: Color.fromARGB(255, 19, 18, 19),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    ElevatedButton(
                      onPressed: Subtrair,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 223, 50, 7),
                      ),
                      child: Text(
                        'Stop',
                        style: TextStyle(
                          color: Color.fromARGB(255, 19, 18, 19),
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
