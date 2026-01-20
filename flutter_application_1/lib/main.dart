import 'package:flutter/material.dart';

void main() {
  runApp(const MyGuga());
}

class MyGuga extends StatelessWidget {
  const MyGuga({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        colorScheme: .fromSeed(
          seedColor: const Color.fromARGB(255, 205, 104, 36),
        ),
      ),

      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

/////////////////////////////////////
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  // This widget is the home page of your application. It is stateful, meaning
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
////////////////////////////////////////////////

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    return Scaffold();
  }
}
