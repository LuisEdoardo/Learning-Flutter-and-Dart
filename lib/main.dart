import 'package:flutter/material.dart';

//void main() {
//  runApp(FirstApp());
//}

void main() => runApp(FirstApp());

class FirstApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var question = [
      'Cual es tu color favorito?',
      'Cual es tu animal favorito?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Mi primera vez..."),
          backgroundColor: Color.fromARGB(255, 154, 40, 247),
        ),
        body: Column(children: [
          Text('La pregunta!'),
          ElevatedButton(
            onPressed: () {},
            child: Text('Primera Respuesta'),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text('Segunda Respuesta'),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text('Tercera Respuesta'),
          ),
          Text("Algun dia creare un pinche Netflix, Te lo prometo IBON")
        ]),
      ),
    );
  }
}
